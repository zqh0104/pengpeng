package com.pengpeng.v4.pojo.sysset;

import com.pengpeng.common.annotation.Excel;
import com.pengpeng.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.math.BigDecimal;

/**
 * 系统设置表
 * 
 * @author 
 * @email 
 * @date 2019-12-12 09:38:27
 */
@Data
@ToString
@EqualsAndHashCode
public class SysSet extends BaseEntity {

	/**
	 * 
	 */
	@Excel(name = "主键")
	private Integer id;
	/**
	 * 注册赠送滑动次数
	 */
	@Excel(name = "注册赠送滑动次数")
	private Integer registerFreeNum;
	/**
	 * 会员开通赠送滑动次数
	 */
	@Excel(name = "会员开通赠送滑动次数")
	private Integer vipFreeNum;
	/**
	 * 邀请好友赠送滑动次数
	 */
	@Excel(name = "邀请好友赠送滑动次数")
	private Integer inviteFreeNum;
	/**
	 * 绑定关系赠送滑动次数
	 */
	@Excel(name = "绑定关系赠送滑动次数")
	private Integer bindingFreeNum;
	/**
	 * 提现最低限制
	 */
	@Excel(name = "提现最低限制")
	private BigDecimal withdrawLowest;
	/**
	 * 提现开始时间(号)
	 */
	@Excel(name = "提现开始时间(号)")
	private Integer withdrawStar;

	/**提现结束时间(号)*/
	@Excel(name = "提现结束时间(号)")
	private Integer withdrawOver;

	/**每天滑动次数*/
	private Integer eachDayNum;

	/**折现比例*/
	private String discountRate;

	/**消费一钻石对应多少财富值*/
	private String treasure;

	/**
	 * tim管理员的账户
	 */
	private String timAdmin;

	/**
	 * 开通会员后每天可以滑动的次数
	 */
	private Integer vipDayNum;


	/**
	 * tim管理员的秘钥
	 */
	private String timSig;
	private String ext1;

	private String ext2;

	private Integer shareNum;
}
