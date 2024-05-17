package com.xc.process.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xc.process.model.model.process.ProcessRecord;


/**
 * <p>
 * 审批记录 服务类
 * </p>

 */
public interface OaProcessRecordService extends IService<ProcessRecord> {

    void record(Long processId, Integer status, String description);
}
