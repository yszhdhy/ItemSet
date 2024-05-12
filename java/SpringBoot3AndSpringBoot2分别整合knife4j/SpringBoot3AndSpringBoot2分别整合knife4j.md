# 一、SpringBoot2进行整合knife4j



## 1.1 导入依赖

```xml
        <dependency>
            <groupId>com.github.xiaoymin</groupId>
            <artifactId>knife4j-spring-boot-starter</artifactId>
        </dependency>
```

## 1.2 配置knife4j 配置文件

```java
package com.ds.common.knife4j; //com.atguigu.common.config.knife4j;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.ParameterBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.Parameter;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

import java.util.ArrayList;
import java.util.List;

/**
* knife4j配置信息
*/
@Configuration
@EnableSwagger2WebMvc
public class Knife4jConfig {

    @Bean
    public Docket adminApiConfig(){
        List<Parameter> pars = new ArrayList<>();
        ParameterBuilder tokenPar = new ParameterBuilder();
        tokenPar.name("token")
                .description("用户token")
                .defaultValue("")
                .modelRef(new ModelRef("string"))
                .parameterType("header")
                .required(false)
                .build();
        pars.add(tokenPar.build());
        //添加head参数end

        Docket adminApi = new Docket(DocumentationType.SWAGGER_2)
                .groupName("adminApi")
                .apiInfo(adminApiInfo())
                .select()
                //只显示admin路径下的页面
                .apis(RequestHandlerSelectors.basePackage("com.ds"))
                .paths(PathSelectors.regex("/admin/.*"))  // "/admin/.*"
                .build()
                .globalOperationParameters(pars);
        return adminApi;
    }

    private ApiInfo adminApiInfo(){

        return new ApiInfoBuilder()
                .title("后台管理系统-API文档")
                .description("本文档描述了后台管理系统微服务接口定义")
                .version("1.0")
                .contact(new Contact("DS-ERP", "http://DS.com", "DS@qq.com"))
                .build();
    }

}

```

## 1.3 可以在接口上配置 注解进行信息的配置

```java
package com.ds.process.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ds.common.result.Result;
import com.ds.model.vo.process.ProcessQueryVo;
import com.ds.model.vo.process.ProcessVo;
import com.ds.process.service.OaProcessService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 审批类型 前端控制器
 * </p>
 *
 */
@Api("审批页面")
@RestController
@RequestMapping(value = "/admin/process")
public class OaProcessController {

    @Autowired
    private OaProcessService processService;

    //审批管理列表
    @ApiOperation(value = "获取分页列表")
    @GetMapping("{page}/{limit}")
    public Result index(@PathVariable Long page,
                        @PathVariable Long limit,
                        ProcessQueryVo processQueryVo) {
        Page<ProcessVo> pageParam = new Page<>(page,limit);
        IPage<ProcessVo> pageModel =
                processService.selectPage(pageParam,processQueryVo);
        return Result.ok(pageModel);
    }
}


```



# 二、SpringBoot3 整合kinfe4j

## 2.1 导入依赖

```xml
<dependency>
    <groupId>com.github.xiaoymin</groupId>
    <artifactId>knife4j-openapi3-jakarta-spring-boot-starter</artifactId>
    <version>4.1.0</version>
</dependency>
<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
    <optional>true</optional>
</dependency>
```



## 2.2 yaml配置文件

```yaml
server:
  port: 8080
# springdoc-openapi项目配置，访问地址：http://127.0.0.1:8080/doc.html
springdoc:
  swagger-ui:
    path: /swagger-ui.html
    tags-sorter: alpha
    operations-sorter: alpha
  api-docs:
    path: /v3/api-docs
  group-configs:
    - group: 'default'
      paths-to-match: '/**'
      packages-to-scan: com.hexadecimal.example

# knife4j的增强配置，不需要增强可以不配
knife4j:
  enable: true
  setting:
    language: zh_cn

# Logger Config
logging:
  level:
    com.hexadecimal: debug
```

1. `springdoc.swagger-ui.path`配置UI界面的访问路径。
2. `knife4j.enable`是否开启增强配置。
3. 配置项目的日志级别为debug。

## 2.3 swagger初始化配置

```java
@Configuration
public class SwaggerConfig {

    @Bean
    public OpenAPI springShopOpenAPI() {
        return new OpenAPI()
                .info(new Info().title("十六进制说")
                        .description("十六进制说API文档")
                        .version("v1")
                        .license(new License().name("Apache 2.0").url("http://springdoc.org")))
                .externalDocs(new ExternalDocumentation()
                        .description("外部文档")
                        .url("https://springshop.wiki.github.org/docs"));
    }

}

```

## 2.4 创建接口 

```java
@Tag(name = "用户管理")
@RestController
@Slf4j
public class UserController {
    @Operation(summary = "查询")
    @GetMapping("query")
    public UserDO query(@Parameter(name = "name", description = "名称") String name) {
        UserDO userDO = new UserDO();
        userDO.setName(name);
        return userDO;
    }

    @Operation(summary = "列表")
    @PostMapping("list")
    public List<UserDO> list() {
        return new ArrayList<UserDO>();
    }

    @Operation(summary ="新增")
    @PostMapping("add")
    public UserDO add(UserDO userDO) {
        return new UserDO();
    }

    @Operation(summary ="修改")
    @PostMapping("update")
    public UserDO update(UserDO userDO) {
        return new UserDO();
    }

    @Operation(summary ="删除")
    @PostMapping("delete")
    public Boolean delete(Integer id) {
        return true;
    }
}
```

