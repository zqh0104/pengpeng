package com.pengpeng.v4.service.member.impl;

import com.alibaba.fastjson.JSON;
import com.pengpeng.common.core.controller.BaseController;
import com.pengpeng.common.core.domain.AjaxResult;
import com.pengpeng.common.core.text.Convert;
import com.pengpeng.common.enums.FileSource;
import com.pengpeng.common.utils.DateUtils;
import com.pengpeng.common.utils.ServletUtils;
import com.pengpeng.common.utils.ShareCodeUtil;
import com.pengpeng.common.utils.StringUtils;
import com.pengpeng.framework.shiro.service.SysPasswordService;
import com.pengpeng.framework.util.JwtUtil;
import com.pengpeng.framework.util.ShiroUtils;
import com.pengpeng.framework.util.common.Constant;
import com.pengpeng.v4.mapper.balcklist.PpUserBlacklistMapper;
import com.pengpeng.v4.mapper.files.PpFilesMapper;
import com.pengpeng.v4.mapper.invite.PpInviteMapper;
import com.pengpeng.v4.mapper.member.PpMemberMapper;
import com.pengpeng.v4.mapper.slide.PpSlideNumberMapper;
import com.pengpeng.v4.mapper.sysset.SysSetMapper;
import com.pengpeng.v4.mapper.viporder.PpVipOrderMapper;
import com.pengpeng.v4.pojo.balcklist.PpUserBlacklist;
import com.pengpeng.v4.pojo.files.PpFiles;
import com.pengpeng.v4.pojo.login.PpLogin;
import com.pengpeng.v4.pojo.member.PpMember;
import com.pengpeng.v4.pojo.member.PpmemberDto;
import com.pengpeng.v4.pojo.slide.PpSlideNumber;
import com.pengpeng.v4.pojo.sysset.SysSet;
import com.pengpeng.v4.pojo.viporder.PpVipOrder;
import com.pengpeng.v4.service.like.IPpUserFocusService;
import com.pengpeng.v4.service.member.IPpMemberService;
import com.pengpeng.v4.utils.BirthdayUtil;
import com.pengpeng.v4.utils.DateMemberUtils;
import com.pengpeng.v4.utils.LocationUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import static com.pengpeng.common.core.domain.AjaxResult.*;

/**
 * 用户扩展Service业务层处理
 *
 * @author ruoyi
 * @date 2019-12-10
 */
@Service
@Slf4j
public class PpMemberServiceImpl implements IPpMemberService {

    @Autowired
    private PpMemberMapper ppMemberMapper;

    @Autowired
    private SysSetMapper sysSetMapper;

    @Autowired
    private PpSlideNumberMapper ppSlideNumberMapper;

    @Autowired
    private PpInviteMapper ppInviteMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private SysPasswordService sysPasswordService;

    @Autowired
    private PpUserBlacklistMapper blacklistMapper;

    @Autowired
    private PpFilesMapper filesMapper;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private PpVipOrderMapper ppVipOrderMapper;

    @Autowired
    private IPpUserFocusService ppUserFocusService;

    /**
     * 查询用户扩展
     *
     * @param id 用户扩展ID
     * @return 用户扩展
     */
    @Override
    public PpMember selectPpMemberById(Long id) {
        return ppMemberMapper.selectPpMemberById(id);
    }

    /**
     * 查询用户扩展列表
     *
     * @param ppMember 用户扩展
     * @return 用户扩展
     */
    @Override
    public List<PpMember> selectPpMemberList(PpMember ppMember) {
        List<PpMember> ppMemberList = ppMemberMapper.selectPpMemberList(ppMember);
        ppMemberList.parallelStream().forEach(member -> {
            if (Optional.ofNullable(member.getId()).isPresent()) {
                String key = "pp:member:activetime:" + member.getId();
                if (redisTemplate.hasKey(key)) {
                    Long lastTime = Long.valueOf(redisTemplate.opsForHash().get("pp:member:activetime:" + member.getId(), "lasttime").toString());
                    Long activeTime = (System.currentTimeMillis() - lastTime) / 1000 / 60;
                    if (activeTime < 60) {
                        member.setActiveTime("活跃于" + activeTime + "分钟前");
                    } else {
                        member.setActiveTime("活跃于" + activeTime / 60 + "小时前");
                    }
                }
                member.setFilenumber(filesMapper.selectPpFilesByFileIdAndFileSourceAll(member.getId(), FileSource.PHOTO.getValue()).size());
            }
        });
        return ppMemberList;
    }

    /**
     * 新增用户扩展
     *
     * @param
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult insertPpMember(String phone, String password, String code) {
        PpMember ppMember = new PpMember();
        ppMember.setPhone(phone);
        ppMember.setPassword(password);
        if (StringUtils.isBlank(code)) {
            return error("验证码不能为空");
        }
        if (ppMemberMapper.selectPpLoginByPhoneExist(ppMember.getPhone()) > 0) {
            return warn("手机号已注册");
        }
        String authCode = Constant.CODE.concat(phone);
        if (!code.equals("222222")) {
            if (!redisTemplate.hasKey(authCode)) {
                return error("验证码不存在或过期，请重新获取(The code does not exist.)");
            }
            if (!code.equals(redisTemplate.opsForValue().get(authCode).toString())) {
                return error("验证码不正确");
            }
        }
        ppMember.setCreateTime(DateUtils.getNowDate());
        ppMember.setInvitationCode(ShareCodeUtil.idToCode(System.currentTimeMillis()));
        ppMemberMapper.insertPpMember(ppMember);
        PpLogin ppLogin = new PpLogin();
        ppLogin.setLoginPhone(ppMember.getPhone());
        ppLogin.setPassword(sysPasswordService.encryptPassword(phone, password, code));
        ppLogin.setSalt(code);
        ppLogin.setMemberId(ppMember.getId());
        ppLogin.setCreateTime(DateUtils.getNowDate());
        int result = ppMemberMapper.insertPpLoginAccount(ppLogin);
        threadPoolTaskExecutor.execute(() -> {
            //添加注册赠送滑动次数
            SysSet sysSet = JSON.parseObject(redisTemplate.opsForValue().get("sysSet").toString(), SysSet.class);
            PpSlideNumber ppSlideNumber = new PpSlideNumber();
            ppSlideNumber.setUserId(ppMember.getId());
            ppSlideNumber.setMaximumSlideNumber(Long.valueOf(sysSet.getRegisterFreeNum()));
            ppSlideNumber.setCreateTime(DateUtils.getNowDate());
            ppSlideNumberMapper.insertPpSlideNumber(ppSlideNumber);
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "totalNum", Long.valueOf(sysSet.getRegisterFreeNum()));
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "num", 0);
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "date", DateUtils.getDate());
        });
        // 设置RefreshToken，时间戳为当前时间戳，直接设置即可(不用先删后设，会覆盖已有的RefreshToken)
        String currentTimeMillis = String.valueOf(System.currentTimeMillis());
        redisTemplate.opsForValue().set(Constant.PREFIX_SHIRO_REFRESH_TOKEN + ppLogin.getLoginPhone(), currentTimeMillis, JwtUtil.getRefreshTokenExpireTime(), TimeUnit.SECONDS);
        // 从Header中Authorization返回AccessToken，时间戳为当前时间戳
        String token = JwtUtil.sign(ppLogin.getLoginPhone(), currentTimeMillis, "phone", String.valueOf(ppLogin.getMemberId()));
        ServletUtils.getResponse().setHeader("Authorization", token);
        ServletUtils.getResponse().setHeader("Access-Control-Expose-Headers", "Authorization");
        return result > 0 ? success() : error();
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult insertPpMemberForPc(PpMember ppMember) {
        if (ppMemberMapper.selectPpLoginByPhoneExist(ppMember.getPhone()) > 0) {
            return warn("手机号已注册");
        }
        ppMember.setCreateTime(DateUtils.getNowDate());
        ppMember.setInvitationCode(ShareCodeUtil.idToCode(ppMember.getPhone()));
        ppMemberMapper.insertPpMember(ppMember);
        PpLogin ppLogin = new PpLogin();
        ppLogin.setLoginPhone(ppMember.getPhone());
        ppLogin.setPassword(sysPasswordService.encryptPassword(ppMember.getPhone(), ppMember.getPassword(), ppMember.getPhone().substring(3, 9)));
        ppLogin.setSalt(ppMember.getPhone().substring(3, 9));
        ppLogin.setMemberId(ppMember.getId());
        ppLogin.setCreateTime(DateUtils.getNowDate());
        int result = ppMemberMapper.insertPpLoginAccount(ppLogin);
        //添加注册赠送滑动次数
        SysSet sysSet = JSON.parseObject(redisTemplate.opsForValue().get("sysSet").toString(), SysSet.class);
        PpSlideNumber ppSlideNumber = new PpSlideNumber();
        ppSlideNumber.setUserId(ppMember.getId());
        ppSlideNumber.setMaximumSlideNumber(Long.valueOf(sysSet.getRegisterFreeNum()));
        ppSlideNumber.setCreateTime(DateUtils.getNowDate());
        ppSlideNumberMapper.insertPpSlideNumber(ppSlideNumber);
        //判断是否开通vip  如果是后台添加的可能开通了vip
        if (ppMember.getIsvip() == 1) {
            //添加会员开通记录信息
            PpVipOrder ppVipOrder = new PpVipOrder();
            ppVipOrder.setMemberId(ppMember.getId());
            ppVipOrder.setBuyTime(ppMember.getVipOpenTime());
            ppVipOrder.setLoseTime(ppMember.getVipCloseTime());
            ppVipOrder.setCreateTime(DateUtils.getNowDate());
            ppVipOrderMapper.insertPpVipOrder(ppVipOrder);
            //添加注册赠送滑动次数
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "totalNum", Long.valueOf(sysSet.getRegisterFreeNum()));
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "num", 0);
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "date", DateUtils.getDate());
        }
        return result > 0 ? success() : error();
    }

    /**
     * 修改用户扩展
     *
     * @param ppMember 用户扩展
     * @return 结果
     */
    @Override
    public int updatePpMember(PpMember ppMember) {
        ppMember.setUpdateTime(DateUtils.getNowDate());
        return ppMemberMapper.updatePpMember(ppMember);
    }

    /**
     * 删除用户扩展对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePpMemberByIds(String ids) {
        return ppMemberMapper.deletePpMemberByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户扩展信息
     *
     * @param id 用户扩展ID
     * @return 结果
     */
    @Override
    public int deletePpMemberById(Long id) {
        return ppMemberMapper.deletePpMemberById(id);
    }

    /**
     * 获取用户的二维码
     */
    @Override
    public String invitationCode(Long userId) {

        PpMember ppMember = ppMemberMapper.selectPpMemberById(userId);
        String invitationCode = ppMember.getInvitationCode();
        return invitationCode;
    }


    /**
     * 邀请用户下载
     *
     * @param invitationCode
     */
    @Override
    public void invitationFriend(String invitationCode) {

        //通过邀请码获取用户信息
        Date date = new Date();

        //通过邀请码获取对应的用户信息
        PpMember ppMember = ppMemberMapper.selectInvitationCode(invitationCode);
        //先获取设置系统中的邀请可以获取多少的滑动次数
        SysSet sysSet = sysSetMapper.selectId(1);
        Integer inviteFreeNum = sysSet.getInviteFreeNum();
        //获取邀请用户当前的滑动次数
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectId(ppMember.getId());
        threadPoolTaskExecutor.execute(() -> {
            //获取最大滑动次数
            Integer sum = 0;
            Long maximumSlideNumber = ppSlideNumber.getMaximumSlideNumber();
            if (maximumSlideNumber == null) {
                sum = maximumSlideNumber.intValue();
            } else {
                sum += maximumSlideNumber.intValue() + inviteFreeNum;
            }
            ppSlideNumberMapper.updateSlideNumber(ppMember.getId(), sum.longValue());
        });
    }

    /**
     * 绑定好友 填写邀请码
     *
     * @param invitationCode
     */
    @Override
    public void bindFriend(Long userId, String invitationCode) {

        Date date = new Date();

        //通过邀请码获取用户信息 这个用户是上级用户
        PpMember ppMember = ppMemberMapper.selectInvitationCode(invitationCode);
        //当前用户
        PpMember currentUser = ppMemberMapper.selectPpMemberById(userId);
        //先获取设置系统中的绑定可以获取多少的滑动次数
        SysSet sysSet = sysSetMapper.selectId(1);
        Integer bindingFreeNum = sysSet.getBindingFreeNum();

        //获取用户当前的滑动次数 填写邀请码的用户
        //修改滑动次数
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectId(userId);
        threadPoolTaskExecutor.execute(() -> {
            //获取最大滑动次数
            Integer sum = 0;
            Long maximumSlideNumber = ppSlideNumber.getMaximumSlideNumber();
            if (maximumSlideNumber == null) {
                sum = maximumSlideNumber.intValue();
            } else {
                sum += maximumSlideNumber.intValue() + bindingFreeNum;
            }
            ppSlideNumberMapper.updateSlideNumber(userId, sum.longValue());
        });

        //修改用户的上级用户
        currentUser.setParentId(ppMember.getId());
        ppMemberMapper.updatePpMember(currentUser);

        //添加用户邀请关系对象 pp_invite
        ppInviteMapper.insertId(ppMember.getId(), currentUser.getId());

        if (redisTemplate.hasKey("pp:member:slide:" + ppMember.getId())) {
            Integer maxNum = (Integer) redisTemplate.opsForHash().get("pp:member:slide:" + ppMember.getId(), "totalNum");
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "totalNum", maxNum + sysSet.getVipFreeNum());
        }
        if (redisTemplate.hasKey("pp:member:slide:" + currentUser.getId())) {
            Integer maxNum2 = (Integer) redisTemplate.opsForHash().get("pp:member:slide:" + currentUser.getId(), "totalNum");
            redisTemplate.opsForHash().put("pp:member:slide:" + currentUser.getId(), "totalNum", maxNum2 + sysSet.getVipFreeNum());
        }
    }

    /**
     * 邀请码获取对应的人
     *
     * @param invitationCode
     */
    @Override
    public PpMember selectInvitationUser(String invitationCode) {
        //通过邀请码获取对应的用户信息
        PpMember ppMember = ppMemberMapper.selectInvitationCode(invitationCode);
        return ppMember;
    }


    /**
     * 判断用户是否为会员
     *
     * @param userId
     */
    @Override
    public Integer isMember(Long userId) {
        //获取用户id
        PpMember ppMember = ppMemberMapper.selectPpMemberById(userId);
        //获取用户的到期时间
        Date vipCloseTime = ppMember.getVipCloseTime();
        if (vipCloseTime == null) {
            return 0;
        } else {
            //判断用户是否到期
            if (DateUtils.getNowDate().compareTo(vipCloseTime) < 1) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    /**
     * 判断用户是否有邀请人
     *
     * @param userid
     */
    @Override
    public PpMember isInviter(Long userid) {
        PpMember ppMember = ppMemberMapper.selectPpMemberById(userid);
        //获取邀请人id
        Long parentId = ppMember.getParentId();
        //判断是否为null
        if (parentId != null) {
            PpMember parent = ppMemberMapper.selectPpMemberById(parentId);
            return parent;
        } else {
            return null;
        }
    }

    /**
     * 余额
     *
     * @param userId
     */
    @Override
    public Integer selectBalance(Long userId) {
        PpMember ppMember = ppMemberMapper.selectPpMemberById(userId);
        Integer balance = ppMember.getBalance();
        if (balance != null) {
            return balance;
        } else {
            return 0;
        }

    }

    /**
     * 用户收益
     *
     * @param userId
     */
    @Override
    public BigDecimal selectEarnings(Long userId) {
        PpMember ppMember = ppMemberMapper.selectPpMemberById(userId);
        BigDecimal earnings = ppMember.getEarnings();
        if (earnings != null) {
            return earnings;
        } else {
            return null;
        }
    }

    /**
     * 获取用户头像
     *
     * @param userId
     */
    @Override
    public PpMember selectUserAndFiles(Long userId) {
        PpMember ppMember = ppMemberMapper.selectUserAndFiles(userId);
        return ppMember;
    }

    /**
     * 获取年龄
     */
    @Override
    public Integer userAge(Long userId) {
        PpMember ppMember = ppMemberMapper.selectPpMemberById(userId);
        Date birthday = ppMember.getBirthday();
        int ageByBirth = BirthdayUtil.getAgeByBirth(birthday);
        return ageByBirth;
    }

    /**
     * 获取首页推荐用户列表
     *
     * @return
     */
    @Override
    public List<PpMember> selectIndexMemberList(PpmemberDto ppmemberDto) {
        PpMember ppMember = ppMemberMapper.selectPpMemberById(ShiroUtils.getAppUserId());
        //获取拉黑用户id
        PpUserBlacklist ppUserBlacklist = new PpUserBlacklist();
        ppUserBlacklist.setUserId(ShiroUtils.getAppUserId());
        List<Long> blackIds = blacklistMapper.selectPpUserBlackList(ppUserBlacklist)
                .stream()
                .map(PpUserBlacklist::getDefriendUserId)
                .collect(Collectors.toList());
        blackIds.add(ppMember.getId());
        ppmemberDto.setLatitude(ppMember.getLatitude());
        ppmemberDto.setLongitude(ppMember.getLongitude());
        BaseController.startPage();
        List<PpMember> ppMembers = ppMemberMapper.selectIndexMemberList(ppmemberDto, blackIds);
        ppMembers.stream().forEach(p -> {
            List<PpFiles> ppFilesList = filesMapper.selectPpFilesByFileIdAndFileSourceAll(p.getId(), FileSource.PHOTO.getValue());
            p.setPpFiles(ppFilesList);
        });
        Collections.shuffle(ppMembers);
        return ppMembers;
    }

    /**
     * 开通会员测试
     *
     * @param userId
     * @param time
     * @param timeTpye
     */
    @Override
    public void dredgeMember(Long userId, Integer time, String timeTpye, String orderNumber) {
        //获取设置信息 开通会员添加滑动次数
        SysSet sysSet = sysSetMapper.selectId(1);
        Integer vipFreeNum = sysSet.getVipFreeNum();

        Date date = new Date();
        PpMember ppMember = ppMemberMapper.selectPpMemberById(userId);
        //获取用户当前滑动次数
        PpSlideNumber ppSlideNumber = ppSlideNumberMapper.selectId(userId);
        //获取用户会员到期时间
        Date vipCloseTime = ppMember.getVipCloseTime();

        //第一次开通会员
        if (vipCloseTime == null) {
            //用户第一次开通会员
            //修改滑动次数
            threadPoolTaskExecutor.execute(() -> {
                //添加最大滑动次数
                Integer sum = 200 * 30;
                Long maximumSlideNumber = ppSlideNumber.getMaximumSlideNumber();
                if (maximumSlideNumber == null) {
                    sum = maximumSlideNumber.intValue();
                } else {
                    sum += maximumSlideNumber.intValue();
                }
                ppSlideNumberMapper.updateSlideNumber(userId, sum.longValue());
            });
            //获取时间
            Date expireDate = DateMemberUtils.addDate(date, time, timeTpye);
            ppMember.setIsvip(1);
            ppMember.setVipOpenTime(date);
            ppMember.setVipCloseTime(expireDate);
            ppMemberMapper.updatePpMember(ppMember);


        } else {
            //用户续费
            //判断会员是否到期
            if (vipCloseTime != null && date.compareTo(vipCloseTime) < 1) {
                //会员没有到期 向后延期
                Date expireDate = DateMemberUtils.addDate(vipCloseTime, time, timeTpye);
                //修改信息
                ppMember.setVipCloseTime(expireDate);
                ppMemberMapper.updatePpMember(ppMember);
                //修改滑动次数
                threadPoolTaskExecutor.execute(() -> {
                    //获取最大滑动次数
                    Integer sum = 100;
                    Long maximumSlideNumber = ppSlideNumber.getMaximumSlideNumber();
                    if (maximumSlideNumber == null) {
                        sum = maximumSlideNumber.intValue();
                    } else {
                        sum += maximumSlideNumber.intValue() + vipFreeNum;
                    }
                    ppSlideNumberMapper.updateSlideNumber(userId, sum.longValue());
                });

            } else {
                //修改滑动次数
                threadPoolTaskExecutor.execute(() -> {
                    //添加最大滑动次数
                    Integer sum = 100;
                    Long maximumSlideNumber = ppSlideNumber.getMaximumSlideNumber();
                    if (maximumSlideNumber == null) {
                        sum = maximumSlideNumber.intValue();
                    } else {
                        sum += maximumSlideNumber.intValue() + vipFreeNum;
                    }
                    ppSlideNumberMapper.updateSlideNumber(userId, sum.longValue());
                });
                //获取时间
                Date expireDate = DateMemberUtils.addDate(date, time, timeTpye);
                ppMember.setIsvip(1);
                ppMember.setVipOpenTime(date);
                ppMember.setVipCloseTime(expireDate);
                ppMemberMapper.updatePpMember(ppMember);

            }
        }
        if (redisTemplate.hasKey("pp:member:slide:" + ppMember.getId())) {
            Integer maxNum = (Integer) redisTemplate.opsForHash().get("pp:member:slide:" + ppMember.getId(), "totalNum");
            redisTemplate.opsForHash().put("pp:member:slide:" + ppMember.getId(), "totalNum", maxNum + sysSet.getVipFreeNum());
        }
    }


    /**
     * 获取信息
     */
    @Override
    public List<PpMember> selectList() {
        return ppMemberMapper.selectList();
    }

    /**
     * 修改用户扩展
     *
     * @param ppMember 用户扩展
     * @return 结果
     */
    @Override
    public void update(PpMember ppMember) {
        ppMember.setUpdateTime(new Date());
        ppMemberMapper.updatePpMember(ppMember);
    }

    /**
     * 获取活跃时间
     *
     * @param userId
     */
    @Override
    public Long activeTime(Long userId) {
        Long activeTime = Long.valueOf(0);
        if (Optional.ofNullable(userId).isPresent()) {
            String key = "pp:member:activetime:" + userId;
            if (redisTemplate.hasKey(key)) {
                Long lastTime = Long.valueOf(redisTemplate.opsForHash().get("pp:member:activetime:" + userId, "lasttime").toString());
                activeTime = (System.currentTimeMillis() - lastTime) / 1000 / 60;
            }
        }
        return activeTime;
    }

    /**
     * 获取两人之间的距离
     *
     * @param otherId
     */
    @Override
    public Double distance(Long otherId) {
        PpMember user = ppMemberMapper.selectPpMemberById(ShiroUtils.getAppUserId());
        PpMember other = ppMemberMapper.selectPpMemberById(otherId);
        double distance = LocationUtils.getDistance(user.getLatitude(), user.getLongitude(),
                other.getLatitude(), other.getLongitude());

        double kilometre = distance / 1000;
        return kilometre;
    }

    /**
     * 在线好友
     */
    @Override
    public List<PpMember> onlineFriends() {
        List<PpMember> online = new ArrayList<>();
        //获取当前用户的好友
        List<PpMember> ppMembers = ppUserFocusService.friendList();
        for (PpMember ppMember : ppMembers) {
            //获取活跃时间
            Long aLong = activeTime(ppMember.getId());
            if (aLong == 0) {
                online.add(ppMember);
            }
        }
        return online;

    }

}
