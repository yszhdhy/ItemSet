create table sys_role_menu
(
    id          bigint auto_increment
        primary key,
    role_id     bigint    default 0                 not null,
    menu_id     bigint    default 0                 not null,
    create_time timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted  tinyint   default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '角色菜单' charset = utf8mb3;

create index idx_menu_id
    on sys_role_menu (menu_id);

create index idx_role_id
    on sys_role_menu (role_id);

INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (1, 2, 2, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (2, 2, 3, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (3, 2, 6, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (4, 2, 7, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (5, 2, 8, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (6, 2, 9, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (7, 2, 18, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (8, 2, 4, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (9, 2, 10, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (10, 2, 11, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (11, 2, 12, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (12, 2, 13, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (13, 2, 19, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (14, 2, 5, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (15, 2, 14, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (16, 2, 15, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (17, 2, 16, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (18, 2, 17, '2022-06-02 16:11:27', '2022-06-02 16:16:10', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (19, 2, 2, '2022-06-02 16:16:10', '2022-06-09 09:26:34', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (20, 2, 3, '2022-06-02 16:16:10', '2022-06-09 09:26:34', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (21, 2, 6, '2022-06-02 16:16:10', '2022-06-09 09:26:34', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (22, 2, 7, '2022-06-02 16:16:10', '2022-06-09 09:26:34', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (23, 2, 8, '2022-06-02 16:16:10', '2022-06-09 09:26:34', 1);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (24, 2, 2, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (25, 2, 3, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (26, 2, 6, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (27, 2, 7, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (28, 2, 8, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (29, 2, 5, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (30, 2, 14, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (31, 2, 20, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (32, 2, 21, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (33, 10, 2, '2023-04-28 08:37:00', '2023-04-28 08:37:00', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (34, 10, 4, '2023-04-28 08:37:00', '2023-04-28 08:37:00', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (35, 10, 10, '2023-04-28 08:37:00', '2023-04-28 08:37:00', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (36, 10, 11, '2023-04-28 08:37:00', '2023-04-28 08:37:00', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (37, 10, 12, '2023-04-28 08:37:00', '2023-04-28 08:37:00', 0);
INSERT INTO `guigu-oa`.sys_role_menu (id, role_id, menu_id, create_time, update_time, is_deleted) VALUES (38, 10, 19, '2023-04-28 08:37:00', '2023-04-28 08:37:00', 0);
