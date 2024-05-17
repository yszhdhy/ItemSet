//
//
package com.xc.process.model.vo;


import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 用户查询实体
 * </p>
 */
@Data
public class LifeJournalQueryVo implements Serializable {

	private static final long serialVersionUID = 1L;

	private String keyword;

	private String createTimeBegin;
	private String createTimeEnd;

	private Long page;
	private Long limit;

}

