package com.xc.process.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import com.xc.process.model.model.process.ProcessTemplate;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 * 审批模板 Mapper 接口
 * </p>
 */
@Mapper
public interface OaProcessTemplateMapper extends BaseMapper<ProcessTemplate> {

}
