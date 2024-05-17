package com.xc.process.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import com.xc.process.model.model.process.ProcessRecord;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 * 审批记录 Mapper 接口
 * </p>

 */
@Mapper
public interface OaProcessRecordMapper extends BaseMapper<ProcessRecord> {

}
