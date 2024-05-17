create table oa_process_record
(
    id              bigint auto_increment comment 'id'
        primary key,
    process_id      bigint    default 0                 not null comment '审批流程id',
    description     varchar(255)                        null comment '审批描述',
    status          tinyint   default 0                 null comment '状态',
    operate_user_id bigint    default 0                 not null comment '操作用户id',
    operate_user    varchar(20)                         null comment '操作用户',
    create_time     timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time     timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted      tinyint   default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '审批记录' charset = utf8mb3;

INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (9, 5, '发起申请', 1, 112, '徐超c', '2023-05-21 13:37:26', '2023-05-21 13:37:26', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (10, 5, '已通过', 1, 111, '陈剑豪', '2023-05-21 13:38:08', '2023-05-21 13:38:08', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (11, 5, '已通过', 1, 107, '肖大海', '2023-05-21 13:40:01', '2023-05-21 13:40:01', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (12, 6, '发起申请', 1, 112, '徐超c', '2023-05-21 13:44:39', '2023-05-21 13:44:39', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (13, 6, '已通过', 1, 111, '陈剑豪', '2023-05-21 13:45:07', '2023-05-21 13:45:07', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (14, 6, '已通过', 1, 107, '肖大海', '2023-05-21 13:45:21', '2023-05-21 13:45:21', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (15, 7, '发起申请', 1, 112, '徐超c', '2023-05-21 13:51:49', '2023-05-21 13:51:49', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (16, 7, '已通过', 1, 111, '陈剑豪', '2023-05-21 13:51:58', '2023-05-21 13:51:58', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (17, 7, '已通过', 1, 107, '肖大海', '2023-05-21 13:52:07', '2023-05-21 13:52:07', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (18, 8, '发起申请', 1, 112, '徐超c', '2023-05-21 13:55:21', '2023-05-21 13:55:21', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (19, 8, '已通过', 1, 111, '陈剑豪', '2023-05-21 13:56:02', '2023-05-21 13:56:02', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (20, 8, '已通过', 1, 107, '肖大海', '2023-05-21 13:56:48', '2023-05-21 13:56:48', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (21, 9, '发起申请', 1, 112, '徐超c', '2023-05-21 14:05:31', '2023-05-21 14:05:31', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (22, 9, '已通过', 1, 111, '陈剑豪', '2023-05-21 14:05:44', '2023-05-21 14:05:44', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (23, 9, '已通过', 1, 107, '肖大海', '2023-05-21 14:06:05', '2023-05-21 14:06:05', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (24, 10, '发起申请', 1, 107, '肖大海', '2023-05-21 15:33:29', '2023-05-21 15:33:29', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (25, 11, '发起申请', 1, 107, '肖大海', '2023-05-21 15:33:46', '2023-05-21 15:33:46', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (26, 12, '发起申请', 1, 107, '肖大海', '2023-05-21 15:45:31', '2023-05-21 15:45:31', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (27, 13, '发起申请', 1, 107, '肖大海', '2023-05-21 15:59:12', '2023-05-21 15:59:12', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (28, 14, '发起申请', 1, 107, '肖大海', '2023-05-21 16:03:19', '2023-05-21 16:03:19', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (29, 15, '发起申请', 1, 107, '肖大海', '2023-05-22 20:44:58', '2023-05-22 20:44:58', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (30, 16, '发起申请', 1, 107, '肖大海', '2023-05-22 20:46:35', '2023-05-22 20:46:35', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (31, 18, '发起申请', 1, 111, '陈剑豪', '2023-06-04 11:31:46', '2023-06-04 11:31:46', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (32, 17, '发起申请', 1, 111, '陈剑豪', '2023-06-04 11:31:46', '2023-06-04 11:31:46', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (33, 19, '发起申请', 1, 5, '熊禹', '2023-06-04 11:36:02', '2023-06-04 11:36:02', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (34, 19, '已通过', 1, 111, '陈剑豪', '2023-06-04 11:36:51', '2023-06-04 11:36:51', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (35, 19, '已通过', 1, 107, '肖大海', '2023-06-04 11:39:06', '2023-06-04 11:39:06', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (36, 20, '发起申请', 1, 107, '肖大海', '2023-06-06 08:16:08', '2023-06-06 08:16:08', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (37, 21, '发起申请', 1, 5, '熊禹', '2023-06-06 08:17:05', '2023-06-06 08:17:05', 0);
INSERT INTO `guigu-oa`.oa_process_record (id, process_id, description, status, operate_user_id, operate_user, create_time, update_time, is_deleted) VALUES (38, 23, '发起申请', 1, 112, '徐超c', '2024-05-17 13:12:27', '2024-05-17 13:12:27', 0);
