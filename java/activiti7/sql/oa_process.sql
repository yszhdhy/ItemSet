create table oa_process
(
    id                  bigint auto_increment comment 'id'
        primary key,
    process_code        varchar(50) default ''                not null comment '审批code',
    user_id             bigint      default 0                 not null comment '用户id',
    process_template_id bigint                                null comment '审批模板id',
    process_type_id     bigint                                null comment '审批类型id',
    title               varchar(255)                          null comment '标题',
    description         varchar(255)                          null comment '描述',
    form_values         text                                  null comment '表单值',
    process_instance_id varchar(255)                          null comment '流程实例id',
    current_auditor     varchar(255)                          null comment '当前审批人',
    status              tinyint                               null comment '状态（0：默认 1：审批中 2：审批通过 -1：驳回）',
    create_time         timestamp   default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time         timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted          tinyint     default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '审批类型' charset = utf8mb3;

INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (5, '1684647446788', 112, 8, 3, '徐超c发起报账申请', '等待肖大海审批', '{"formData":{"activity":"吃席","des":"去工农村吃的席","price":"299","account":"2088722003370174","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"去工农村吃的席","活动消费":"299","收款账户":"2088722003370174","收款方姓名":"roecch1909"}}', '91e75fef-f799-11ed-ab45-5614f3a83dd8', null, 1, '2023-05-21 13:37:26', '2023-05-21 13:37:26', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (6, '1684647879609', 112, 8, 3, '徐超c发起报账申请', '等待肖大海审批', '{"formData":{"activity":"吃席","des":"工农村吃席","price":"3999","account":"2088722003370174","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"工农村吃席","活动消费":"3999","收款账户":"2088722003370174","收款方姓名":"roecch1909"}}', '93decd9f-f79a-11ed-8bb8-5614f3a83dd8', null, 1, '2023-05-21 13:44:39', '2023-05-21 13:44:39', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (7, '1684648309838', 112, 8, 3, '徐超c发起报账申请', '审批完成（通过）', '{"formData":{"activity":"吃席","des":"梧州广场吃席","price":"666","account":"2088722003370174","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"梧州广场吃席","活动消费":"666","收款账户":"2088722003370174","收款方姓名":"roecch1909"}}', '944eb14b-f79b-11ed-a46c-5614f3a83dd8', null, 2, '2023-05-21 13:51:49', '2023-05-21 13:51:49', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (8, '1684648521150', 112, 8, 3, '徐超c发起报账申请', '审批完成（通过）', '{"formData":{"activity":"吃席","des":"工农吃席","price":"799","account":"2088722003370174","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"工农吃席","活动消费":"799","收款账户":"2088722003370174","收款方姓名":"roecch1909"}}', '1240d1bd-f79c-11ed-a46c-5614f3a83dd8', null, 2, '2023-05-21 13:55:21', '2023-05-21 13:55:21', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (9, '1684649131057', 112, 8, 3, '徐超c发起报账申请', '审批完成（通过）', '{"formData":{"activity":"吃席","des":"工农村吃席","price":"77777","account":"2088722003370174","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"工农村吃席","活动消费":"77777","收款账户":"2088722003370174","收款方姓名":"roecch1909"}}', '7dc8efdf-f79d-11ed-a46c-5614f3a83dd8', null, 2, '2023-05-21 14:05:31', '2023-05-21 14:05:31', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (10, '1684654409330', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', 'c7e37684-f7a9-11ed-8383-5614f3a83dd8', null, 1, '2023-05-21 15:33:29', '2023-05-21 15:33:29', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (11, '1684654426494', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', 'd21ca68e-f7a9-11ed-8383-5614f3a83dd8', null, 1, '2023-05-21 15:33:46', '2023-05-21 15:33:46', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (12, '1684655131389', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', '76431788-f7ab-11ed-8383-5614f3a83dd8', null, 1, '2023-05-21 15:45:31', '2023-05-21 15:45:31', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (13, '1684655952821', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', '5fe04752-f7ad-11ed-8383-5614f3a83dd8', null, 1, '2023-05-21 15:59:12', '2023-05-21 15:59:12', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (14, '1684656199673', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', 'f302244c-f7ad-11ed-8383-5614f3a83dd8', null, 1, '2023-05-21 16:03:19', '2023-05-21 16:03:19', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (15, '1684759498460', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', '75e3fc8b-f89e-11ed-a0e5-5614f3a83dd8', null, 1, '2023-05-22 20:44:58', '2023-05-22 20:44:58', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (16, '1684759595189', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{},"formShowData":{}}', 'af8ba925-f89e-11ed-a0e5-5614f3a83dd8', null, 1, '2023-05-22 20:46:35', '2023-05-22 20:46:35', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (17, '1685849505784', 111, 8, 3, '陈剑豪发起报账申请', '等待陈剑豪审批', '{"formData":{"activity":"吃席","des":"工农村吃席","price":"300","account":"roecch1909@sandbox.com","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"工农村吃席","活动消费":"300","收款账户":"roecch1909@sandbox.com","收款方姓名":"roecch1909"}}', '54ecb22d-0288-11ee-b729-5614f3a83dd8', null, 1, '2023-06-04 11:31:45', '2023-06-04 11:31:46', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (18, '1685849505783', 111, 8, 3, '陈剑豪发起报账申请', '等待陈剑豪审批', '{"formData":{"activity":"吃席","des":"工农村吃席","price":"300","account":"roecch1909@sandbox.com","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"工农村吃席","活动消费":"300","收款账户":"roecch1909@sandbox.com","收款方姓名":"roecch1909"}}', '54ecb22e-0288-11ee-b729-5614f3a83dd8', null, 1, '2023-06-04 11:31:45', '2023-06-04 11:31:46', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (19, '1685849762406', 5, 8, 3, '熊禹发起报账申请', '等待肖大海审批', '{"formData":{"activity":"吃席","des":"工农村吃席","price":"300","account":"roecch1909@sandbox.com","name":"roecch1909"},"formShowData":{"活动标题":"吃席","活动具体描述":"工农村吃席","活动消费":"300","收款账户":"roecch1909@sandbox.com","收款方姓名":"roecch1909"}}', 'edd6a971-0288-11ee-b729-5614f3a83dd8', null, 1, '2023-06-04 11:36:02', '2023-06-04 11:36:02', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (20, '1686010568248', 107, 8, 3, '肖大海发起报账申请', '等待陈剑豪审批', '{"formData":{"activity":"洒点水asd","des":"阿萨德a","price":"200","account":"22222","name":"3333"},"formShowData":{"活动标题":"洒点水asd","活动具体描述":"阿萨德a","活动消费":"200","收款账户":"22222","收款方姓名":"3333"}}', '55986b02-03ff-11ee-bf4d-5614f3a83dd8', null, 1, '2023-06-06 08:16:08', '2023-06-06 08:16:08', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (21, '1686010625130', 5, 8, 3, '熊禹发起报账申请', '等待陈剑豪审批', '{"formData":{"activity":"sasa","des":"sfdsfd","price":"200","account":"200","name":"sefef"},"formShowData":{"活动标题":"sasa","活动具体描述":"sfdsfd","活动消费":"200","收款账户":"200","收款方姓名":"sefef"}}', '777df05c-03ff-11ee-bf4d-5614f3a83dd8', null, 1, '2023-06-06 08:17:05', '2023-06-06 08:17:05', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (22, '1715922515807', 112, 2, 2, '徐超c发起请假申请', null, '{"formData":{"sdate":"2024-05-17","edate":"2024-05-20","day":"8","reason":"玩","dept":"产品部"},"formShowData":{"开始时间":"2024-05-17","结束时间":"2024-05-20","请假天数":"8","请假原因":"玩","所属部门":"产品部"}}', null, null, 1, '2024-05-17 13:08:35', '2024-05-17 13:08:35', 0);
INSERT INTO `guigu-oa`.oa_process (id, process_code, user_id, process_template_id, process_type_id, title, description, form_values, process_instance_id, current_auditor, status, create_time, update_time, is_deleted) VALUES (23, '1715922747413', 112, 8, 3, '徐超c发起报账申请', '等待陈剑豪审批', '{"formData":{"activity":"玩","des":"玩","price":"100","account":"5464565565","name":"65454"},"formShowData":{"活动标题":"玩","活动具体描述":"玩","活动消费":"100","收款账户":"5464565565","收款方姓名":"65454"}}', '0dbbf6cf-140c-11ef-9416-00ff0088eeca', null, 1, '2024-05-17 13:12:27', '2024-05-17 13:12:27', 0);