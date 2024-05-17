create table wechat_menu
(
    id          bigint auto_increment comment '编号'
        primary key,
    parent_id   bigint                              null comment '上级id',
    name        varchar(50)                         null comment '菜单名称',
    type        varchar(10)                         null comment '类型',
    url         varchar(100)                        null comment '网页 链接，用户点击菜单可打开链接',
    meun_key    varchar(20)                         null comment '菜单KEY值，用于消息接口推送',
    sort        tinyint                             null comment '排序',
    create_time timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    is_deleted  tinyint   default 0                 not null
)
    comment '菜单' charset = utf8mb3;

INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (2, 0, '审批列表', null, null, null, 1, '2022-12-13 09:23:30', '2022-12-13 09:29:22', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (3, 0, '审批中心', 'view', '/', null, 2, '2022-12-13 09:23:44', '2022-12-13 09:54:20', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (4, 0, '我的', null, null, null, 3, '2022-12-13 09:23:52', '2022-12-13 09:29:24', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (5, 2, '待处理', 'view', '/list/0', '', 1, '2022-12-13 09:19:56', '2022-12-13 09:24:10', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (6, 2, '已处理', 'view', '/list/1', '', 2, '2022-12-13 09:27:00', '2022-12-13 09:29:28', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (7, 2, '已发起', 'view', '/list/1', '', 3, '2022-12-13 09:27:30', '2022-12-13 09:29:30', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (8, 4, '基本信息', 'view', '/user', '', 1, '2022-12-13 09:28:47', '2022-12-13 09:28:47', 0);
INSERT INTO `guigu-oa`.wechat_menu (id, parent_id, name, type, url, meun_key, sort, create_time, update_time, is_deleted) VALUES (9, 4, '关于我们', 'view', '/about', '', 2, '2022-12-13 09:29:08', '2022-12-13 09:29:32', 0);
