package com.xc.process.model.model;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.util.Date;


import com.xc.process.model.model.base.BaseEntity;
import lombok.Data;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 *
 *
 * @author ds
 * @email DS@gmail.com
 * @date 2023-05-15 09:48:17
 */
@Data
@TableName("ds_user")
public class DsUserEntity extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/**
	 * 届
	 */
	@NotNull(message = "届不能为空")
	private String term;

	/**
	 * 用户名
	 */
	@NotNull(message = "用户名不能为空" )
	private String username;
	/**
	 * 学号
	 */
	@NotNull(message = "学号不能为空" )
	private String studentNumber;
	/**
	 * 性别
	 */
	@NotNull(message = "性别不能为空")
	private String gender;

	/**
	 * QQ
	 */
	@NotNull(message = "QQ不能为空")
	private String qq;

	/**
	 * 手机号
	 */
	@NotNull(message = "手机号不能为空" )
	@Pattern(regexp = "^1[3-9]\\d{9}$",message = "必须是一个合法的手机号")
	private String phone;

	/**
	 * 邮箱
	 */
//	@NotNull(message = "邮箱不能为空",groups ={UpdateGroup.class, AddGroup.class} )
//	@Email(message = "必须是一个合法的邮箱",groups ={UpdateGroup.class, AddGroup.class})
	private String mail;

	/**
	 * 加入年份
	 */
	private String joinTime;

	/**
	 * 年级和班级
	 */
	@NotNull(message = "年级和班级不能为空" )
	private String gradeAndClass;
	/**
	 * 离校年份
	 */
	private String graduateTime;
	/**
	 * 目前所在地
	 */
	private String currentLocation;
	/**
	 * 目前工作单位
	 */
	private String currentCompany;
	/**
	 * 岗位
	 */
	private String post;
	/**
	 * 角色
	 */
	private String role;

	/**
	 * 钉钉userId
	 */
//	@NotNull(message = "钉钉userId不能为空",groups ={UpdateGroup.class, AddGroup.class})
	private String dingUserId;

	/**
	 * 钉钉部门id
	 */
	private Long deptId;

	/**
	 * 状态（0 表示在工作室，1表示已退出, 2 表示未加入）
	 */
	private Integer status;

}
