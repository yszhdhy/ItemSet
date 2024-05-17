create table sys_login_log
(
    id          bigint auto_increment comment '访问ID'
        primary key,
    username    varchar(50)  default ''                null comment '用户账号',
    ipaddr      varchar(128) default ''                null comment '登录IP地址',
    status      tinyint(1)   default 0                 null comment '登录状态（0成功 1失败）',
    msg         varchar(255) default ''                null comment '提示信息',
    access_time datetime                               null comment '访问时间',
    create_time timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    update_time timestamp                              null on update CURRENT_TIMESTAMP,
    is_deleted  tinyint      default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '系统访问记录' charset = utf8mb3;

INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (1, 'admin', '0:0:0:0:0:0:0:1', 1, '登录成功', null, '2022-06-10 11:24:14', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (2, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-06-10 11:53:43', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (3, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-01 09:22:43', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (4, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-01 09:38:06', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (5, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-01 10:24:16', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (6, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-02 08:29:36', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (7, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-02 08:29:52', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (8, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-02 15:40:01', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (9, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-02 15:40:08', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (10, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-05 09:01:40', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (11, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-06 09:34:33', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (12, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-06 09:34:38', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (13, 'test', '127.0.0.1', 1, '登录成功', null, '2022-12-06 09:51:58', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (14, 'wanggang', '127.0.0.1', 1, '登录成功', null, '2022-12-06 09:52:08', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (15, 'wangqq', '127.0.0.1', 1, '登录成功', null, '2022-12-06 09:52:16', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (16, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-07 10:23:36', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (17, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-07 12:22:24', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (18, 'lijiangshi', '127.0.0.1', 1, '登录成功', null, '2022-12-07 17:10:35', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (19, 'jingli', '127.0.0.1', 1, '登录成功', null, '2022-12-07 17:14:15', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (20, 'rsjl', '127.0.0.1', 1, '登录成功', null, '2022-12-07 17:14:50', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (21, 'zjl', '127.0.0.1', 1, '登录成功', null, '2022-12-07 17:15:01', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (22, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-08 09:36:59', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (23, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-08 09:40:57', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (24, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 08:35:27', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (25, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 08:35:33', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (26, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 09:30:41', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (27, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 09:40:22', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (28, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 09:45:37', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (29, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 09:47:01', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (30, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 09:52:43', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (31, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 14:16:22', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (32, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:17:25', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (33, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:19:32', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (34, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:32:44', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (35, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:32:46', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (36, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:32:47', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (37, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:32:54', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (38, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:32:55', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (39, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:32:56', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (40, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:33:12', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (41, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:33:18', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (42, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:33:43', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (43, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:33:44', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (44, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:34:23', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (45, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:34:34', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (46, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:34:41', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (47, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:35:12', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (48, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:35:15', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (49, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:35:16', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (50, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:35:23', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (51, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:35:46', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (52, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:36:36', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (53, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-09 16:40:13', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (54, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-12 08:32:48', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (55, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-21 17:11:32', null, 0);
INSERT INTO `guigu-oa`.sys_login_log (id, username, ipaddr, status, msg, access_time, create_time, update_time, is_deleted) VALUES (56, 'admin', '127.0.0.1', 1, '登录成功', null, '2022-12-22 09:44:15', null, 0);
