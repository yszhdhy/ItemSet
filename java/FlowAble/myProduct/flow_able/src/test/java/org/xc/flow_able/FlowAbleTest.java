package org.xc.flow_able;

import org.flowable.engine.ProcessEngine;
import org.flowable.engine.ProcessEngineConfiguration;
import org.flowable.engine.impl.cfg.StandaloneProcessEngineConfiguration;
import org.flowable.engine.repository.Deployment;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


/**
 * @project flow_able
 * @description
 * @author capture or new
 * @date 2024/5/10 15:15:30
 * @version 1.0
 */

@SpringBootTest
public class FlowAbleTest {






    /**
     * 不通过Spring容器。我们单独的构建ProcessEngine对象来实现部署的操作
     */
    @Test
    void contextLoads() {
        // 1.流程引擎的配置
        ProcessEngineConfiguration cfg = new StandaloneProcessEngineConfiguration()
                .setJdbcUrl("jdbc:mysql://localhost:3306/flowable-learn?serverTimezone=UTC&nullCatalogMeansCurrent=true")
                .setJdbcUsername("root")
                .setJdbcPassword("root")
                .setJdbcDriver("com.mysql.cj.jdbc.Driver")
                .setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE); // DB_SCHEMA_UPDATE_TRUE没有表会自定创建表
        // 2.构建流程引擎对象
        ProcessEngine processEngine = cfg.buildProcessEngine();
        System.out.println(processEngine);
        Deployment deploy = processEngine.getRepositoryService().createDeployment()
                .addClasspathResource("process/demo.bpmn20.xml")
                .name("第一个流程案例")
                .deploy();
        System.out.println(deploy.getId());
    }

}
