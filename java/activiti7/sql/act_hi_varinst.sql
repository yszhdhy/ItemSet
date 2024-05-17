create table act_hi_varinst
(
    ID_                varchar(64)   not null
        primary key,
    PROC_INST_ID_      varchar(64)   null,
    EXECUTION_ID_      varchar(64)   null,
    TASK_ID_           varchar(64)   null,
    NAME_              varchar(255)  not null,
    VAR_TYPE_          varchar(100)  null,
    REV_               int           null,
    BYTEARRAY_ID_      varchar(64)   null,
    DOUBLE_            double        null,
    LONG_              bigint        null,
    TEXT_              varchar(4000) null,
    TEXT2_             varchar(4000) null,
    CREATE_TIME_       datetime(3)   null,
    LAST_UPDATED_TIME_ datetime(3)   null
)
    collate = utf8mb3_bin;

create index ACT_IDX_HI_PROCVAR_NAME_TYPE
    on act_hi_varinst (NAME_, VAR_TYPE_);

create index ACT_IDX_HI_PROCVAR_PROC_INST
    on act_hi_varinst (PROC_INST_ID_);

create index ACT_IDX_HI_PROCVAR_TASK_ID
    on act_hi_varinst (TASK_ID_);

INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('0b39b3ee-0289-11ee-b729-5614f3a83dd8', 'edd6a971-0288-11ee-b729-5614f3a83dd8', 'edd6d084-0288-11ee-b729-5614f3a83dd8', '0b3965cd-0289-11ee-b729-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.LinkedHashMap', '2023-06-04 11:36:51.718', '2023-06-04 11:36:51.718');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('0dbcba20-140c-11ef-9416-00ff0088eeca', '0dbbf6cf-140c-11ef-9416-00ff0088eeca', '0dbbf6cf-140c-11ef-9416-00ff0088eeca', null, 'data', 'json', 0, null, null, null, '{"des":"玩","activity":"玩","price":"100","name":"65454","account":"5464565565"}', 'java.util.HashMap', '2024-05-17 13:12:27.442', '2024-05-17 13:12:27.442');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('0dc23866-140c-11ef-9416-00ff0088eeca', '0dbbf6cf-140c-11ef-9416-00ff0088eeca', '0dbd0842-140c-11ef-9416-00ff0088eeca', '0dbfc765-140c-11ef-9416-00ff0088eeca', 'data', 'json', 0, null, null, null, '{"des":"玩","activity":"玩","price":"100","name":"65454","account":"5464565565"}', 'java.util.LinkedHashMap', '2024-05-17 13:12:27.477', '2024-05-17 13:12:27.477');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('1240f8ce-f79c-11ed-a46c-5614f3a83dd8', '1240d1bd-f79c-11ed-a46c-5614f3a83dd8', '1240d1bd-f79c-11ed-a46c-5614f3a83dd8', null, 'data', 'json', 2, null, null, null, '{"des":"工农吃席","activity":"吃席","price":"799","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:55:21.156', '2023-05-21 13:56:48.181');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('12411fe4-f79c-11ed-a46c-5614f3a83dd8', '1240d1bd-f79c-11ed-a46c-5614f3a83dd8', '1240f8d0-f79c-11ed-a46c-5614f3a83dd8', '1240f8d3-f79c-11ed-a46c-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农吃席","activity":"吃席","price":"799","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:55:21.157', '2023-05-21 13:55:21.157');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('2b12462a-f79c-11ed-a46c-5614f3a83dd8', '1240d1bd-f79c-11ed-a46c-5614f3a83dd8', '1240f8d0-f79c-11ed-a46c-5614f3a83dd8', '2b121f19-f79c-11ed-a46c-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农吃席","activity":"吃席","price":"799","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:56:02.793', '2023-05-21 13:56:02.793');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('54f05baf-0288-11ee-b729-5614f3a83dd8', '54ecb22d-0288-11ee-b729-5614f3a83dd8', '54ecb22d-0288-11ee-b729-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.HashMap', '2023-06-04 11:31:45.892', '2023-06-04 11:31:45.892');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('54f05bb0-0288-11ee-b729-5614f3a83dd8', '54ecb22e-0288-11ee-b729-5614f3a83dd8', '54ecb22e-0288-11ee-b729-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.HashMap', '2023-06-04 11:31:45.892', '2023-06-04 11:31:45.892');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('54ff9dfb-0288-11ee-b729-5614f3a83dd8', '54ecb22e-0288-11ee-b729-5614f3a83dd8', '54f1e254-0288-11ee-b729-5614f3a83dd8', '54fcb7ca-0288-11ee-b729-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.LinkedHashMap', '2023-06-04 11:31:45.991', '2023-06-04 11:31:45.991');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('54ff9dfc-0288-11ee-b729-5614f3a83dd8', '54ecb22d-0288-11ee-b729-5614f3a83dd8', '54f1e253-0288-11ee-b729-5614f3a83dd8', '54fcb7c9-0288-11ee-b729-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.LinkedHashMap', '2023-06-04 11:31:45.991', '2023-06-04 11:31:45.991');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('55992e53-03ff-11ee-bf4d-5614f3a83dd8', '55986b02-03ff-11ee-bf4d-5614f3a83dd8', '55986b02-03ff-11ee-bf4d-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{"des":"阿萨德a","activity":"洒点水asd","price":"200","name":"3333","account":"22222"}', 'java.util.HashMap', '2023-06-06 08:16:08.271', '2023-06-06 08:16:08.271');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('559ed3a9-03ff-11ee-bf4d-5614f3a83dd8', '55986b02-03ff-11ee-bf4d-5614f3a83dd8', '55997c75-03ff-11ee-bf4d-5614f3a83dd8', '559cd7d8-03ff-11ee-bf4d-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"阿萨德a","activity":"洒点水asd","price":"200","name":"3333","account":"22222"}', 'java.util.LinkedHashMap', '2023-06-06 08:16:08.308', '2023-06-06 08:16:08.308');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('5fe04753-f7ad-11ed-8383-5614f3a83dd8', '5fe04752-f7ad-11ed-8383-5614f3a83dd8', '5fe04752-f7ad-11ed-8383-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-21 15:59:12.829', '2023-05-21 15:59:12.829');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('5fe0e399-f7ad-11ed-8383-5614f3a83dd8', '5fe04752-f7ad-11ed-8383-5614f3a83dd8', '5fe04755-f7ad-11ed-8383-5614f3a83dd8', '5fe09578-f7ad-11ed-8383-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-21 15:59:12.833', '2023-05-21 15:59:12.833');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('75e471bc-f89e-11ed-a0e5-5614f3a83dd8', '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8', '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-22 20:44:58.478', '2023-05-22 20:44:58.478');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('75e7a612-f89e-11ed-a0e5-5614f3a83dd8', '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8', '75e498ce-f89e-11ed-a0e5-5614f3a83dd8', '75e66d91-f89e-11ed-a0e5-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-22 20:44:58.499', '2023-05-22 20:44:58.499');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('76431789-f7ab-11ed-8383-5614f3a83dd8', '76431788-f7ab-11ed-8383-5614f3a83dd8', '76431788-f7ab-11ed-8383-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-21 15:45:31.393', '2023-05-21 15:45:31.393');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('76433e9f-f7ab-11ed-8383-5614f3a83dd8', '76431788-f7ab-11ed-8383-5614f3a83dd8', '7643178b-f7ab-11ed-8383-5614f3a83dd8', '76433e9e-f7ab-11ed-8383-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-21 15:45:31.394', '2023-05-21 15:45:31.394');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('777df05d-03ff-11ee-bf4d-5614f3a83dd8', '777df05c-03ff-11ee-bf4d-5614f3a83dd8', '777df05c-03ff-11ee-bf4d-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{"des":"sfdsfd","activity":"sasa","price":"200","name":"sefef","account":"200"}', 'java.util.HashMap', '2023-06-06 08:17:05.135', '2023-06-06 08:17:05.135');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('777e1773-03ff-11ee-bf4d-5614f3a83dd8', '777df05c-03ff-11ee-bf4d-5614f3a83dd8', '777df05f-03ff-11ee-bf4d-5614f3a83dd8', '777e1772-03ff-11ee-bf4d-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"sfdsfd","activity":"sasa","price":"200","name":"sefef","account":"200"}', 'java.util.LinkedHashMap', '2023-06-06 08:17:05.136', '2023-06-06 08:17:05.136');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('7dc8efe0-f79d-11ed-a46c-5614f3a83dd8', '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8', '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8', null, 'data', 'json', 2, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"77777","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 14:05:31.061', '2023-05-21 14:06:05.197');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('7dc93e06-f79d-11ed-a46c-5614f3a83dd8', '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8', '7dc916f2-f79d-11ed-a46c-5614f3a83dd8', '7dc916f5-f79d-11ed-a46c-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"77777","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 14:05:31.062', '2023-05-21 14:05:31.062');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('85a9d80c-f79d-11ed-a46c-5614f3a83dd8', '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8', '7dc916f2-f79d-11ed-a46c-5614f3a83dd8', '85a9b0fb-f79d-11ed-a46c-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"77777","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 14:05:44.278', '2023-05-21 14:05:44.278');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('91e8bf80-f799-11ed-ab45-5614f3a83dd8', '91e75fef-f799-11ed-ab45-5614f3a83dd8', '91e75fef-f799-11ed-ab45-5614f3a83dd8', null, 'data', 'json', 2, null, null, null, '{"des":"去工农村吃的席","activity":"吃席","price":"299","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:37:26.836', '2023-05-21 13:39:57.238');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('91ed5366-f799-11ed-ab45-5614f3a83dd8', '91e75fef-f799-11ed-ab45-5614f3a83dd8', '91e934b2-f799-11ed-ab45-5614f3a83dd8', '91ec9015-f799-11ed-ab45-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"去工农村吃的席","activity":"吃席","price":"299","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:37:26.866', '2023-05-21 13:37:26.866');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('93df42d0-f79a-11ed-8bb8-5614f3a83dd8', '93decd9f-f79a-11ed-8bb8-5614f3a83dd8', '93decd9f-f79a-11ed-8bb8-5614f3a83dd8', null, 'data', 'json', 2, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"3999","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:44:39.627', '2023-05-21 13:45:21.222');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('93e1dae6-f79a-11ed-8bb8-5614f3a83dd8', '93decd9f-f79a-11ed-8bb8-5614f3a83dd8', '93df90f2-f79a-11ed-8bb8-5614f3a83dd8', '93e165b5-f79a-11ed-8bb8-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"3999","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:44:39.643', '2023-05-21 13:44:39.643');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('944f267c-f79b-11ed-a46c-5614f3a83dd8', '944eb14b-f79b-11ed-a46c-5614f3a83dd8', '944eb14b-f79b-11ed-a46c-5614f3a83dd8', null, 'data', 'json', 2, null, null, null, '{"des":"梧州广场吃席","activity":"吃席","price":"666","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:51:49.856', '2023-05-21 13:52:07.676');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('945233c2-f79b-11ed-a46c-5614f3a83dd8', '944eb14b-f79b-11ed-a46c-5614f3a83dd8', '944f4d8e-f79b-11ed-a46c-5614f3a83dd8', '94519781-f79b-11ed-a46c-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"梧州广场吃席","activity":"吃席","price":"666","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:51:49.876', '2023-05-21 13:51:49.876');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('992eb588-f79b-11ed-a46c-5614f3a83dd8', '944eb14b-f79b-11ed-a46c-5614f3a83dd8', '944f4d8e-f79b-11ed-a46c-5614f3a83dd8', '992e8e77-f79b-11ed-a46c-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"梧州广场吃席","activity":"吃席","price":"666","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:51:58.032', '2023-05-21 13:51:58.032');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('a4c1ec6c-f79a-11ed-8bb8-5614f3a83dd8', '93decd9f-f79a-11ed-8bb8-5614f3a83dd8', '93df90f2-f79a-11ed-8bb8-5614f3a83dd8', 'a4c1c55b-f79a-11ed-8bb8-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"3999","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:45:07.955', '2023-05-21 13:45:07.955');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('aac7c87c-f799-11ed-ab45-5614f3a83dd8', '91e75fef-f799-11ed-ab45-5614f3a83dd8', '91e934b2-f799-11ed-ab45-5614f3a83dd8', 'aac7a16b-f799-11ed-ab45-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"去工农村吃的席","activity":"吃席","price":"299","name":"roecch1909","account":"2088722003370174"}', 'java.util.LinkedHashMap', '2023-05-21 13:38:08.563', '2023-05-21 13:38:08.563');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('af8ba926-f89e-11ed-a0e5-5614f3a83dd8', 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8', 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-22 20:46:35.204', '2023-05-22 20:46:35.204');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('af8bf74c-f89e-11ed-a0e5-5614f3a83dd8', 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8', 'af8ba928-f89e-11ed-a0e5-5614f3a83dd8', 'af8ba92b-f89e-11ed-a0e5-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-22 20:46:35.206', '2023-05-22 20:46:35.206');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('c7e3ebb5-f7a9-11ed-8383-5614f3a83dd8', 'c7e37684-f7a9-11ed-8383-5614f3a83dd8', 'c7e37684-f7a9-11ed-8383-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-21 15:33:29.349', '2023-05-21 15:33:29.349');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('c7e7953b-f7a9-11ed-8383-5614f3a83dd8', 'c7e37684-f7a9-11ed-8383-5614f3a83dd8', 'c7e439d7-f7a9-11ed-8383-5614f3a83dd8', 'c7e683ca-f7a9-11ed-8383-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-21 15:33:29.373', '2023-05-21 15:33:29.373');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('d21ca68f-f7a9-11ed-8383-5614f3a83dd8', 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8', 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-21 15:33:46.498', '2023-05-21 15:33:46.498');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('d21ccda5-f7a9-11ed-8383-5614f3a83dd8', 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8', 'd21ca691-f7a9-11ed-8383-5614f3a83dd8', 'd21ca694-f7a9-11ed-8383-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-21 15:33:46.499', '2023-05-21 15:33:46.499');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('edd6d082-0288-11ee-b729-5614f3a83dd8', 'edd6a971-0288-11ee-b729-5614f3a83dd8', 'edd6a971-0288-11ee-b729-5614f3a83dd8', null, 'data', 'json', 2, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.LinkedHashMap', '2023-06-04 11:36:02.415', '2023-06-04 11:39:06.578');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('edd71ea8-0288-11ee-b729-5614f3a83dd8', 'edd6a971-0288-11ee-b729-5614f3a83dd8', 'edd6d084-0288-11ee-b729-5614f3a83dd8', 'edd6d087-0288-11ee-b729-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{"des":"工农村吃席","activity":"吃席","price":"300","name":"roecch1909","account":"roecch1909@sandbox.com"}', 'java.util.LinkedHashMap', '2023-06-04 11:36:02.417', '2023-06-04 11:36:02.417');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('f302244d-f7ad-11ed-8383-5614f3a83dd8', 'f302244c-f7ad-11ed-8383-5614f3a83dd8', 'f302244c-f7ad-11ed-8383-5614f3a83dd8', null, 'data', 'json', 0, null, null, null, '{}', 'java.util.HashMap', '2023-05-21 16:03:19.676', '2023-05-21 16:03:19.676');
INSERT INTO `guigu-oa`.act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('f3024b63-f7ad-11ed-8383-5614f3a83dd8', 'f302244c-f7ad-11ed-8383-5614f3a83dd8', 'f302244f-f7ad-11ed-8383-5614f3a83dd8', 'f3024b62-f7ad-11ed-8383-5614f3a83dd8', 'data', 'json', 0, null, null, null, '{}', 'java.util.LinkedHashMap', '2023-05-21 16:03:19.677', '2023-05-21 16:03:19.677');