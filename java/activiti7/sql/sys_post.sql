create table sys_post
(
    id          bigint auto_increment comment '岗位ID'
        primary key,
    post_code   varchar(64)                            not null comment '岗位编码',
    name        varchar(50)  default ''                not null comment '岗位名称',
    description varchar(255) default ''                not null comment '描述',
    status      tinyint(1)   default 1                 not null comment '状态（1正常 0停用）',
    create_time timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    update_time timestamp                              null on update CURRENT_TIMESTAMP,
    is_deleted  tinyint      default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '岗位信息表' charset = utf8mb3;

INSERT INTO `guigu-oa`.sys_post (id, post_code, name, description, status, create_time, update_time, is_deleted) VALUES (5, 'rsjl', '人事经理', '1', 1, '2022-05-24 10:33:53', '2022-12-07 16:03:05', 0);
INSERT INTO `guigu-oa`.sys_post (id, post_code, name, description, status, create_time, update_time, is_deleted) VALUES (6, 'jl', '经理', '2', 1, '2022-05-24 10:34:08', '2022-12-07 16:00:36', 0);
INSERT INTO `guigu-oa`.sys_post (id, post_code, name, description, status, create_time, update_time, is_deleted) VALUES (7, 'wz', '网咨', '', 1, '2022-05-27 08:56:41', '2022-05-27 08:56:41', 1);
INSERT INTO `guigu-oa`.sys_post (id, post_code, name, description, status, create_time, update_time, is_deleted) VALUES (8, 'zjl', '总经理', '', 1, '2022-06-08 17:14:21', '2022-12-07 16:01:13', 0);
INSERT INTO `guigu-oa`.sys_post (id, post_code, name, description, status, create_time, update_time, is_deleted) VALUES (9, 'bj', '编辑', '', 1, '2022-12-07 16:04:10', null, 0);
INSERT INTO `guigu-oa`.sys_post (id, post_code, name, description, status, create_time, update_time, is_deleted) VALUES (10, 'yg', '员工', '', 1, '2022-12-07 16:47:34', '2022-12-22 10:04:29', 0);
