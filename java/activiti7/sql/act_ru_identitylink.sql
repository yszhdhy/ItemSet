create table act_ru_identitylink
(
    ID_           varchar(64)  not null
        primary key,
    REV_          int          null,
    GROUP_ID_     varchar(255) null,
    TYPE_         varchar(255) null,
    USER_ID_      varchar(255) null,
    TASK_ID_      varchar(64)  null,
    PROC_INST_ID_ varchar(64)  null,
    PROC_DEF_ID_  varchar(64)  null,
    constraint ACT_FK_ATHRZ_PROCEDEF
        foreign key (PROC_DEF_ID_) references act_re_procdef (ID_),
    constraint ACT_FK_IDL_PROCINST
        foreign key (PROC_INST_ID_) references act_ru_execution (ID_),
    constraint ACT_FK_TSKASS_TASK
        foreign key (TASK_ID_) references act_ru_task (ID_)
)
    collate = utf8mb3_bin;

create index ACT_IDX_ATHRZ_PROCEDEF
    on act_ru_identitylink (PROC_DEF_ID_);

create index ACT_IDX_IDENT_LNK_GROUP
    on act_ru_identitylink (GROUP_ID_);

create index ACT_IDX_IDENT_LNK_USER
    on act_ru_identitylink (USER_ID_);

INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('0dc23868-140c-11ef-9416-00ff0088eeca', 1, null, 'participant', '陈剑豪', null, '0dbbf6cf-140c-11ef-9416-00ff0088eeca', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('54ffc50f-0288-11ee-b729-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '54ecb22e-0288-11ee-b729-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('54ffc510-0288-11ee-b729-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '54ecb22d-0288-11ee-b729-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('559ed3ab-03ff-11ee-bf4d-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '55986b02-03ff-11ee-bf4d-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('5fe0e39b-f7ad-11ed-8383-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '5fe04752-f7ad-11ed-8383-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('75e7cd24-f89e-11ed-a0e5-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('764365b1-f7ab-11ed-8383-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '76431788-f7ab-11ed-8383-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('777e3e85-03ff-11ee-bf4d-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, '777df05c-03ff-11ee-bf4d-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('af8bf74e-f89e-11ed-a0e5-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('c7e7953d-f7a9-11ed-8383-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, 'c7e37684-f7a9-11ed-8383-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('d21ccda7-f7a9-11ed-8383-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8', null);
INSERT INTO `guigu-oa`.act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('f3024b65-f7ad-11ed-8383-5614f3a83dd8', 1, null, 'participant', '陈剑豪', null, 'f302244c-f7ad-11ed-8383-5614f3a83dd8', null);
