create table act_ru_task
(
    ID_               varchar(64)             not null
        primary key,
    REV_              int                     null,
    EXECUTION_ID_     varchar(64)             null,
    PROC_INST_ID_     varchar(64)             null,
    PROC_DEF_ID_      varchar(64)             null,
    NAME_             varchar(255)            null,
    BUSINESS_KEY_     varchar(255)            null,
    PARENT_TASK_ID_   varchar(64)             null,
    DESCRIPTION_      varchar(4000)           null,
    TASK_DEF_KEY_     varchar(255)            null,
    OWNER_            varchar(255)            null,
    ASSIGNEE_         varchar(255)            null,
    DELEGATION_       varchar(64)             null,
    PRIORITY_         int                     null,
    CREATE_TIME_      timestamp(3)            null,
    DUE_DATE_         datetime(3)             null,
    CATEGORY_         varchar(255)            null,
    SUSPENSION_STATE_ int                     null,
    TENANT_ID_        varchar(255) default '' null,
    FORM_KEY_         varchar(255)            null,
    CLAIM_TIME_       datetime(3)             null,
    APP_VERSION_      int                     null,
    constraint ACT_FK_TASK_EXE
        foreign key (EXECUTION_ID_) references act_ru_execution (ID_),
    constraint ACT_FK_TASK_PROCDEF
        foreign key (PROC_DEF_ID_) references act_re_procdef (ID_),
    constraint ACT_FK_TASK_PROCINST
        foreign key (PROC_INST_ID_) references act_ru_execution (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_TASK_CREATE
    on act_ru_task (CREATE_TIME_);

INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('0dbfc765-140c-11ef-9416-00ff0088eeca', 1, '0dbd0842-140c-11ef-9416-00ff0088eeca', '0dbbf6cf-140c-11ef-9416-00ff0088eeca', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '23', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2024-05-17 13:12:27.451', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('54fcb7c9-0288-11ee-b729-5614f3a83dd8', 1, '54f1e253-0288-11ee-b729-5614f3a83dd8', '54ecb22d-0288-11ee-b729-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '17', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-06-04 11:31:45.946', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('54fcb7ca-0288-11ee-b729-5614f3a83dd8', 1, '54f1e254-0288-11ee-b729-5614f3a83dd8', '54ecb22e-0288-11ee-b729-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '18', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-06-04 11:31:45.946', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('559cd7d8-03ff-11ee-bf4d-5614f3a83dd8', 1, '55997c75-03ff-11ee-bf4d-5614f3a83dd8', '55986b02-03ff-11ee-bf4d-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '20', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-06-06 08:16:08.283', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('5fe09578-f7ad-11ed-8383-5614f3a83dd8', 1, '5fe04755-f7ad-11ed-8383-5614f3a83dd8', '5fe04752-f7ad-11ed-8383-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '13', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-21 15:59:12.831', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('75e66d91-f89e-11ed-a0e5-5614f3a83dd8', 1, '75e498ce-f89e-11ed-a0e5-5614f3a83dd8', '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '15', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-22 20:44:58.484', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('76433e9e-f7ab-11ed-8383-5614f3a83dd8', 1, '7643178b-f7ab-11ed-8383-5614f3a83dd8', '76431788-f7ab-11ed-8383-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '12', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-21 15:45:31.394', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('777e1772-03ff-11ee-bf4d-5614f3a83dd8', 1, '777df05f-03ff-11ee-bf4d-5614f3a83dd8', '777df05c-03ff-11ee-bf4d-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '21', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-06-06 08:17:05.135', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('af8ba92b-f89e-11ed-a0e5-5614f3a83dd8', 1, 'af8ba928-f89e-11ed-a0e5-5614f3a83dd8', 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '16', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-22 20:46:35.204', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('c7e683ca-f7a9-11ed-8383-5614f3a83dd8', 1, 'c7e439d7-f7a9-11ed-8383-5614f3a83dd8', 'c7e37684-f7a9-11ed-8383-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '10', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-21 15:33:29.357', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('d21ca694-f7a9-11ed-8383-5614f3a83dd8', 1, 'd21ca691-f7a9-11ed-8383-5614f3a83dd8', 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '11', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-21 15:33:46.498', null, null, 1, '', null, null, null);
INSERT INTO `guigu-oa`.act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, BUSINESS_KEY_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_, CLAIM_TIME_, APP_VERSION_) VALUES ('f3024b62-f7ad-11ed-8383-5614f3a83dd8', 1, 'f302244f-f7ad-11ed-8383-5614f3a83dd8', 'f302244c-f7ad-11ed-8383-5614f3a83dd8', 'baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', '陈剑豪审批', '14', null, null, 'sid-59A45B58-E921-4688-91D0-03710B980726', null, '陈剑豪', null, 50, '2023-05-21 16:03:19.677', null, null, 1, '', null, null, null);
