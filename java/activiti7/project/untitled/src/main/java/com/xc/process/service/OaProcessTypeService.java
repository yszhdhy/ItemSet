package com.xc.process.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.xc.process.model.model.process.ProcessType;

//import com.xc.process.model.model.process.ProcessType;

import java.util.List;

/**
 * <p>
 * 审批类型 服务类
 * </p>
 */
public interface OaProcessTypeService extends IService<ProcessType> {

    //查询所有审批分类和每个分类所有审批模板
    List<ProcessType> findProcessType();

    ProcessType getOne(LambdaQueryWrapper<ProcessType> wrapper);
}
