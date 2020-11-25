package com.pengpeng.v4.service.slide.impl;

import com.alibaba.fastjson.JSON;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.like.PpUserFocusMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.slide.PpSlideNumberMapper;
import com.pengpeng.v4.mapper.slide.PpSlideRecordMapper;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.pojo.like.PpUserFocus;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import com.pengpeng.v4.pojo.slide.PpSlideRecord;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.like.IPpUserFocusService;
import com.pengpeng.v4.service.slide.IPpSlideRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Administrator
 */
@Service
public class PpSlideRecordServiceImpl implements IPpSlideRecordService {

    @Autowired
    private PpSlideRecordMapper ppSlideRecordMapper;

    @Autowired
    private PpSlideNumberMapper ppSlideNumberMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private SysSetMapper sysSetMapper;

    @Autowired
    private PpUserFocusMapper ppUserFocusMapper;

    @Autowired
    private IPpUserFocusService ppUserFocusService;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult insertSlideRecord(PpSlideRecord ppSlideRecord) {
        Long memberId = ShiroUtils.getAppUserId();
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectUserById(memberId);
        ppSlideRecord.setFromUid(memberId);
        ppSlideRecordMapper.ppSlideRecordAdd(ppSlideRecord);
        ppSlideNumber.setSlideNumber(ppSlideNumber.getSlideNumber() + 1);
        ppSlideNumberMapper.updatePpSlideNumber(ppSlideNumber);

        //喜欢别人  向关注表里面添加数据
        if (ppSlideRecord.getIsLike()) {
            PpUserFocus ppUserFocus = new PpUserFocus();

            //喜欢对方
            ppUserFocusService.interestedUser(ShiroUtils.getAppUserId(), ppSlideRecord.getToUid());
            /*ppUserFocus.setUseraId(ShiroUtils.getAppUserId());
            ppUserFocus.setUserbId(ppSlideRecord.getToUid());
            ppUserFocus.setCreatime(DateUtils.getNowDate());
            ppUserFocusMapper.insertPpUserFocus(ppUserFocus);*/
        }
        return AjaxResult.success();
    }

    /**
     * 查询【请填写功能名称】
     *
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public PpSlideRecord selectPpSlideRecordById(Long id) {
        return ppSlideRecordMapper.selectPpSlideRecordById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     *
     * @param ppSlideRecord 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<PpSlideRecord> selectPpSlideRecordList(PpSlideRecord ppSlideRecord) {
        return ppSlideRecordMapper.selectPpSlideRecordList(ppSlideRecord);
    }

    /**
     * 新增【请填写功能名称】
     *
     * @param ppSlideRecord 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertPpSlideRecord(PpSlideRecord ppSlideRecord) {
        ppSlideRecord.setCreateTime(DateUtils.getNowDate());
        return ppSlideRecordMapper.insertPpSlideRecord(ppSlideRecord);
    }

    /**
     * 修改【请填写功能名称】
     *
     * @param ppSlideRecord 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updatePpSlideRecord(PpSlideRecord ppSlideRecord) {
        ppSlideRecord.setUpdateTime(DateUtils.getNowDate());
        return ppSlideRecordMapper.updatePpSlideRecord(ppSlideRecord);
    }

    /**
     * 删除【请填写功能名称】对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpSlideRecordByIds(String ids) {
        return ppSlideRecordMapper.deletePpSlideRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     *
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deletePpSlideRecordById(Long id) {
        return ppSlideRecordMapper.deletePpSlideRecordById(id);
    }

    @Override
    public AjaxResult getNUm() {
        Long memberId = ShiroUtils.getAppUserId();
        PpMember ppMember = ppMemberMapper.selectPpMemberById(memberId);
        String key = "pp:member:slide:" + memberId;
        if (!redisTemplate.hasKey(key)) {
            redisTemplate.opsForHash().put(key, "num", 1);
            redisTemplate.opsForHash().put(key, "date", DateUtils.getDate());
        } else {
            //判断是不是今天
            if (DateUtils.getDate().equals(redisTemplate.opsForHash().get(key, "date"))) {
                //是今天 判断今日滑动次数是否用完
                SysSet sysSet = JSON.parseObject(redisTemplate.opsForValue().get("sysSet").toString(), SysSet.class);
                Integer eachDayNum = sysSet.getEachDayNum();
                Integer vipDayNum = sysSet.getVipDayNum();
                Integer num = (Integer) redisTemplate.opsForHash().get(key, "num");
                //总次数是否用完
                Integer maxNum = (Integer) redisTemplate.opsForHash().get(key, "totalNum");
                if (ppMember.getIsvip() == 1 && num >= vipDayNum) {
                    if (maxNum <= 0) {
                        return AjaxResult.warn("总滑动次数已用完");
                    } else {
                        redisTemplate.opsForHash().put(key, "totalNum", --maxNum);
                    }
                }
                if (ppMember.getIsvip() == 0 && num >= eachDayNum) {
                    if (maxNum <= 0) {
                        return AjaxResult.warn("总滑动次数已用完");
                    } else {
                        redisTemplate.opsForHash().put(key, "totalNum", --maxNum);
                    }
                }
                redisTemplate.opsForHash().put(key, "num", ++num);
            } else {
                //不是今天  重新初始化值
                redisTemplate.opsForHash().put(key, "num", 1);
                redisTemplate.opsForHash().put(key, "date", DateUtils.getDate());
            }
        }
        return AjaxResult.success("ok");
    }
}
