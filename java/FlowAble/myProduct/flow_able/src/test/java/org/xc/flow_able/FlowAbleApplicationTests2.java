package org.xc.flow_able;


import org.flowable.engine.ProcessEngine;
import org.flowable.engine.RepositoryService;
import org.flowable.engine.RuntimeService;
import org.flowable.engine.TaskService;
import org.flowable.engine.repository.Deployment;
import org.flowable.engine.repository.ProcessDefinition;
import org.flowable.task.api.Task;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author CaptureOrNew
 * @description //FlowAble  进行简单的流程发布到审批完成的过程  且审批人使用的是表达式
 * @date 15:26:14 2024/5/11
 **/
@SpringBootTest
class FlowAbleApplicationTests2 {

    @Autowired
    public ProcessEngine processEngine;


    /**
     * 流程部署操作
     */
    @Test
    public void test1(){
        // 1.获取ProcessEngine对象
        // 2.完成流程的部署操作 需要通过RepositoryService来完成
        RepositoryService repositoryService = processEngine.getRepositoryService();
        // 3.完成部署操作
        Deployment deploy = repositoryService.createDeployment()
                .addClasspathResource("process/demo2.bpmn20.xml")
                .name("任务分配-表达式")
                .deploy(); // 是一个流程部署的行为 可以部署多个流程定义的
        System.out.println(deploy.getId());
        System.out.println(deploy.getName());
    }


    /**
     * 第二步 进行流程的发起
     */
    @Test
    void startProcess(){
        // 发起流程需要通过RuntimeService来实现
        RuntimeService runtimeService = processEngine.getRuntimeService();
        // act_re_procdef 表中的id

        // 启动方式一
        String processId = "HolidayDemo1:1:89fad01e-7a42-11ee-b574-c03c59ad2248";
        // 根据流程定义Id启动 返回的是当前启动的流程实例 ProcessInstance
        //ProcessInstance processInstance = runtimeService.startProcessInstanceById(processId);
        //System.out.println("processInstance.getId() = " + processInstance.getId());

        //启动方式二
        String processKey = "demo2";
        // 进行设置审批人  由于审批人是通过表达式进行设置的
        Map<String,Object> map = new HashMap<>();
        map.put("myVar","xc");
        runtimeService.startProcessInstanceByKey(processKey,map);
    }

    /**
     * 第三步 进行查询代办任务
     */
    @Test
    void findTask(){
        // 任务查询这块我们可以通过 TaskService 来实现
        TaskService taskService = processEngine.getTaskService();
        // 查询的其实就是 act_ru_task 中的记录
        List<Task> list = taskService.createTaskQuery()
                .taskAssignee("admin") // 根据审批人来查询
                .list();// 返回多条记录
        for (Task task : list) {
            System.out.println(task.getId());
        }

        //代办任务 9effc810-0f5e-11ef-8376-00ff0088eeca
    }


    /**
     * 第四步 根据查询人进行任务的审批
     */
    @Test
    void completeTask(){
        TaskService taskService = processEngine.getTaskService();
        // 需要审批的任务 Id
        String taskId = "2cf6f0fe-0f61-11ef-8a86-00ff0088eeca";
        taskService.complete(taskId); // 通过complete方法完成审批
    }


}
