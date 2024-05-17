create table act_hi_identitylink
(
    ID_           varchar(64)  not null
        primary key,
    GROUP_ID_     varchar(255) null,
    TYPE_         varchar(255) null,
    USER_ID_      varchar(255) null,
    TASK_ID_      varchar(64)  null,
    PROC_INST_ID_ varchar(64)  null
)
    collate = utf8mb3_bin;

create index ACT_IDX_HI_IDENT_LNK_PROCINST
    on act_hi_identitylink (PROC_INST_ID_);

create index ACT_IDX_HI_IDENT_LNK_TASK
    on act_hi_identitylink (TASK_ID_);

create index ACT_IDX_HI_IDENT_LNK_USER
    on act_hi_identitylink (USER_ID_);

INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('0b3a0210-0289-11ee-b729-5614f3a83dd8', null, 'participant', '肖大海', null, 'edd6a971-0288-11ee-b729-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('0dc23868-140c-11ef-9416-00ff0088eeca', null, 'participant', '陈剑豪', null, '0dbbf6cf-140c-11ef-9416-00ff0088eeca');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('12411fe6-f79c-11ed-a46c-5614f3a83dd8', null, 'participant', '陈剑豪', null, '1240d1bd-f79c-11ed-a46c-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('2b12462c-f79c-11ed-a46c-5614f3a83dd8', null, 'participant', '肖大海', null, '1240d1bd-f79c-11ed-a46c-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('54ffc50f-0288-11ee-b729-5614f3a83dd8', null, 'participant', '陈剑豪', null, '54ecb22e-0288-11ee-b729-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('54ffc510-0288-11ee-b729-5614f3a83dd8', null, 'participant', '陈剑豪', null, '54ecb22d-0288-11ee-b729-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('559ed3ab-03ff-11ee-bf4d-5614f3a83dd8', null, 'participant', '陈剑豪', null, '55986b02-03ff-11ee-bf4d-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('5fe0e39b-f7ad-11ed-8383-5614f3a83dd8', null, 'participant', '陈剑豪', null, '5fe04752-f7ad-11ed-8383-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('75e7cd24-f89e-11ed-a0e5-5614f3a83dd8', null, 'participant', '陈剑豪', null, '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('764365b1-f7ab-11ed-8383-5614f3a83dd8', null, 'participant', '陈剑豪', null, '76431788-f7ab-11ed-8383-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('777e3e85-03ff-11ee-bf4d-5614f3a83dd8', null, 'participant', '陈剑豪', null, '777df05c-03ff-11ee-bf4d-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('7dc93e08-f79d-11ed-a46c-5614f3a83dd8', null, 'participant', '陈剑豪', null, '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('85a9ff1e-f79d-11ed-a46c-5614f3a83dd8', null, 'participant', '肖大海', null, '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('91ed7a78-f799-11ed-ab45-5614f3a83dd8', null, 'participant', '陈剑豪', null, '91e75fef-f799-11ed-ab45-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('93e201f8-f79a-11ed-8bb8-5614f3a83dd8', null, 'participant', '陈剑豪', null, '93decd9f-f79a-11ed-8bb8-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('94525ad4-f79b-11ed-a46c-5614f3a83dd8', null, 'participant', '陈剑豪', null, '944eb14b-f79b-11ed-a46c-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('992edc9a-f79b-11ed-a46c-5614f3a83dd8', null, 'participant', '肖大海', null, '944eb14b-f79b-11ed-a46c-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('a4c2137e-f79a-11ed-8bb8-5614f3a83dd8', null, 'participant', '肖大海', null, '93decd9f-f79a-11ed-8bb8-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('aac7ef8e-f799-11ed-ab45-5614f3a83dd8', null, 'participant', '肖大海', null, '91e75fef-f799-11ed-ab45-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('af8bf74e-f89e-11ed-a0e5-5614f3a83dd8', null, 'participant', '陈剑豪', null, 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('c7e7953d-f7a9-11ed-8383-5614f3a83dd8', null, 'participant', '陈剑豪', null, 'c7e37684-f7a9-11ed-8383-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('d21ccda7-f7a9-11ed-8383-5614f3a83dd8', null, 'participant', '陈剑豪', null, 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('edd71eaa-0288-11ee-b729-5614f3a83dd8', null, 'participant', '陈剑豪', null, 'edd6a971-0288-11ee-b729-5614f3a83dd8');
INSERT INTO `guigu-oa`.act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('f3024b65-f7ad-11ed-8383-5614f3a83dd8', null, 'participant', '陈剑豪', null, 'f302244c-f7ad-11ed-8383-5614f3a83dd8');
