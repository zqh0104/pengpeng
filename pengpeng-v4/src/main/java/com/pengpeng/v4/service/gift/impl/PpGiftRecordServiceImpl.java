package com.pengpeng.v4.service.gift.impl;

import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.v4.mapper.balace.PpBalaceRecordMapper;
import com.pengpeng.v4.mapper.gift.PpGiftMapper;
import com.pengpeng.v4.mapper.gift.PpGiftRecordMapper;
import com.pengpeng.v4.mapper.income.PpIncomeMapper;
import com.pengpeng.v4.mapper.level.PpLevelMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.pojo.balace.PpBalaceRecord;
import com.pengpeng.v4.pojo.gift.PpGift;
import com.pengpeng.v4.pojo.gift.PpGiftRecord;
import com.pengpeng.v4.pojo.income.PpIncome;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.service.gift.IPpGiftRecordService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 礼物记录Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Slf4j
@Service
public class PpGiftRecordServiceImpl implements IPpGiftRecordService {

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private PpGiftMapper ppGiftMapper;

    @Autowired
    private PpGiftRecordMapper ppGiftRecordMapper;

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private SysSetMapper sysSetMapper;

    @Autowired
    private PpIncomeMapper ppIncomeMapper;

    @Autowired
    private PpLevelMapper ppLevelMapper;

    @Autowired
    private PpBalaceRecordMapper ppBalaceRecordMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 查询礼物记录
     *
     * @param id 礼物记录ID
     * @return 礼物记录
     */
    @Override
    public PpGiftRecord selectPpGiftRecordById(Long id) {
        return ppGiftRecordMapper.selectPpGiftRecordById(id);
    }

    /**
     * 查询礼物记录列表
     *
     * @param ppGiftRecord 礼物记录
     * @return 礼物记录
     */
    @Override
    public List<PpGiftRecord> selectPpGiftRecordList(PpGiftRecord ppGiftRecord) {
        return ppGiftRecordMapper.selectPpGiftRecordList(ppGiftRecord);
    }

    /**
     * 新增礼物记录
     *
     * @param ppGiftRecord 礼物记录
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult insertPpGiftRecord(PpGiftRecord ppGiftRecord) {

        Long appUserId = ShiroUtils.getAppUserId();
        //判断礼物是否存在
        PpGift ppGift = ppGiftMapper.selectPpGiftById(ppGiftRecord.getGiftId());
        if (ppGift == null) {
            return AjaxResult.warn("礼物不存在");
        }
        //判断余额 钻石 是否充足  礼物需要钻石数量*购买数量
        Integer needNum = ppGift.getDiamond() * ppGiftRecord.getGiftNumber();
        PpMember ppMember = ppMemberMapper.selectPpMemberById(ShiroUtils.getAppUserId());
        if (needNum > ppMember.getBalance()) {
            return AjaxResult.warn("余额不足");
        }
        ppGiftRecord.setCreateTime(DateUtils.getNowDate());
        ppGiftRecord.setUserId(ShiroUtils.getAppUserId());
        try {
            ppGiftRecordMapper.insertPpGiftRecord(ppGiftRecord);
            threadPoolTaskExecutor.execute(() -> {
                SysSet sysSet = sysSetMapper.selectSet();
                //减少账户余额
                ppMember.setBalance(ppMember.getBalance() - needNum);
                Long treasure = ppMember.getTreasure() + needNum * Integer.valueOf(sysSet.getTreasure());

                //添加余额记录
                PpBalaceRecord ppBalaceRecord = new PpBalaceRecord();
                ppBalaceRecord.setOtherId(ppGiftRecord.getId());
                ppBalaceRecord.setUserId(appUserId);
                ppBalaceRecord.setType(2);
                ppBalaceRecord.setBalaceAlterationGold(needNum.toString());
                ppBalaceRecord.setBalaceAlterationTime(DateUtils.getNowDate());
                ppBalaceRecordMapper.insertPpBalaceRecord(ppBalaceRecord);

                //增加财富值
                ppMember.setTreasure(treasure);
                //修改财富等级
                String ppLevel = ppLevelMapper.selectCurrentLevel(treasure);
                ppMember.setTreasureLevel(ppLevel);
                ppMemberMapper.updatePpMember(ppMember);
                //增加对方收益
                PpMember toMember = ppMemberMapper.selectPpMemberById(ppGiftRecord.getByUserId());
                BigDecimal incomeMoney = new BigDecimal(needNum.toString()).multiply(new BigDecimal(sysSet.getDiscountRate()));
                //根据系统设置比例 将钻石折算成金额
                toMember.setEarnings(toMember.getEarnings().add(incomeMoney));
                ppMemberMapper.updatePpMember(toMember);
                //添加对方收益记录
                PpIncome ppIncome = new PpIncome();
                ppIncome.setGiftNumber((long) ppGiftRecord.getGiftNumber());
                ppIncome.setUserId(toMember.getId());
                ppIncome.setPresenterId(ppMember.getId());
                ppIncome.setPresenterGift(ppGift.getGiftName());
                ppIncome.setIncomeMoney(incomeMoney);
                ppIncome.setIncomeTime(DateUtils.getNowDate());
                ppIncomeMapper.insertPpIncome(ppIncome);
                if (redisTemplate.hasKey("pp:member:push:" + toMember.getId().toString())) {
                    String registerid = redisTemplate.opsForHash().get("pp:member:push:", toMember.getId().toString()).toString();
                    //自定义推送参数了
                    Map<String, String> parms = new HashMap<String, String>(8);
                    //这里的id是,移动端集成极光并登陆后,极光用户的rid
                    parms.put("id", registerid);
                    parms.put("title", "亲爱的" + toMember.getNickname());
                    //设置提示信息,内容是文章标题
                    parms.put("msg", ppMember.getNickname() + "刚刚赠送了你" + ppGiftRecord.getGiftNumber() + "个" + ppGift.getGiftName() + ",快来看看吧！");
                    parms.put("url", "/pages/my/user-index/gift");
                    parms.put("pushType", "pointToPoint");
                    redisTemplate.convertAndSend("pushIdentificationMessage", parms);
                }
            });

            return AjaxResult.success("赠送成功！");
        } catch (Exception e) {
            log.error(e.getStackTrace().toString());
            log.error("会员id：" + ShiroUtils.getAppUserId() + " --- 充值失败" + e.getStackTrace());
            return AjaxResult.error("赠送失败！");
        }
    }

    /**
     * 修改礼物记录
     *
     * @param ppGiftRecord 礼物记录
     * @return 结果
     */
    @Override
    public int updatePpGiftRecord(PpGiftRecord ppGiftRecord) {
        return ppGiftRecordMapper.updatePpGiftRecord(ppGiftRecord);
    }

    /**
     * 删除礼物记录对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpGiftRecordByIds(String ids) {
        return ppGiftRecordMapper.deletePpGiftRecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除礼物记录信息
     *
     * @param id 礼物记录ID
     * @return 结果
     */
    @Override
    public int deletePpGiftRecordById(Long id) {
        return ppGiftRecordMapper.deletePpGiftRecordById(id);
    }

    /**
     * 收到礼物列表
     *
     * @param userId
     */
    @Override
    public List<PpGiftRecord> receiveGift(Long userId) {
        List<PpGiftRecord> ppGifts = ppGiftRecordMapper.receiveGift(userId);
        return ppGifts;
    }

}
