package com.xc.process.service.impl;

import cn.hutool.json.JSONUtil;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xc.process.mapper.OaProcessRecordMapper;
import com.xc.process.model.model.DsUserEntity;
import com.xc.process.model.model.process.ProcessRecord;
import com.xc.process.result.Result;
import com.xc.process.service.DsUserService;
import com.xc.process.service.OaProcessRecordService;
import com.xc.process.utils.LoginUserInfoHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 审批记录 服务实现类
 * </p>

 */
@Service
public class OaProcessRecordServiceImpl extends ServiceImpl<OaProcessRecordMapper, ProcessRecord> implements OaProcessRecordService {

    @Autowired
    private DsUserService sysUserService;


    @Override
    public void record(Long processId, Integer status, String description) {
        Long userId = LoginUserInfoHelper.getUserId();

        DsUserEntity sysUser = sysUserService.getById(Math.toIntExact(userId));
        ProcessRecord processRecord = new ProcessRecord();
        processRecord.setProcessId(processId);
        processRecord.setStatus(status);
        processRecord.setDescription(description);
        processRecord.setOperateUser(sysUser.getUsername());
        processRecord.setOperateUserId(userId);
        baseMapper.insert(processRecord);
    }
}
