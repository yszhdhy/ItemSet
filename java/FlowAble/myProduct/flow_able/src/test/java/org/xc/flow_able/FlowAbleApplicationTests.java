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

import java.util.List;
/**
 * @author CaptureOrNew
 * @description //FlowAble  进行简单的流程发布到审批完成的过程  且审批人使用的是固定值写死的
 * @date 15:26:14 2024/5/11
 **/
@SpringBootTest
class FlowAbleApplicationTests {

    @Autowired
    public ProcessEngine processEngine;

    /**
     * 通过spring容器进行管理 使用这个进行创建
     * 第一步 进行流程部署
     */
    @Test
    void contextLoadsToSpring() {
        Deployment deploy = processEngine.getRepositoryService().createDeployment()
                .addClasspathResource("process/demo.bpmn20.xml")
                .name("第一个流程案例")
                .deploy();
        System.out.println(deploy.getId());
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
        String processKey = "demo";
        runtimeService.startProcessInstanceByKey(processKey);
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



    /**
     * 挂起流程
     */
    @Test
    public void test05(){
        String processId = "demo:1:36ef7594-0f5e-11ef-8948-00ff0088eeca";
        RepositoryService repositoryService = processEngine.getRepositoryService();
        ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery()
                .processDefinitionId(processId)
                .singleResult();
        // 获取流程定义的状态
        boolean suspended = processDefinition.isSuspended();
        System.out.println("suspended = " + suspended);
        if(suspended){
            // 表示被挂起
            System.out.println("激活流程定义");
            repositoryService.activateProcessDefinitionById(processId,true,null);
        }else{
            // 表示激活状态
            System.out.println("挂起流程");
            repositoryService.suspendProcessDefinitionById(processId,true,null);
        }
    }



}
