create table sys_menu
(
    id          bigint       not null
        primary key,
    parent_id   bigint       null,
    name        varchar(20)  null,
    type        tinyint      null,
    path        varchar(100) null,
    component   varchar(100) null,
    perms       varchar(100) null,
    icon        varchar(100) null,
    sort_value  int          null,
    status      tinyint      null,
    create_time timestamp    null,
    update_time timestamp    null,
    is_deleted  tinyint      null,
    route_name  varchar(255) null,
    redirect    varchar(255) null,
    vue2_icon   varchar(255) null
);

INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (2, 0, '系统管理', 0, 'system', 'layout/index', null, 'Lock', 2, 1, '2021-05-31 00:00:00', '2023-07-23 18:03:05', 0, 'System', '/system/sysUser', 'el-icon-s-tools');
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (3, 2, '用户管理', 1, '/system/sysUser', 'system/sysUser/index', '', 'User', 3, 1, '2021-05-31 00:00:00', '2023-07-23 18:03:05', 0, 'SysUser', null, 'el-icon-s-custom');
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (4, 2, '角色管理', 1, '/system/sysRole', 'system/sysRole/index', '', 'Avatar', 2, 1, '2021-05-31 00:00:00', '2023-07-23 18:03:05', 0, 'SysRole', null, 'el-icon-user-solid');
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (5, 2, '菜单管理', 1, '/system/sysMenu', 'system/sysMenu/index', '', 'List', 3, 1, '2021-05-31 00:00:00', '2023-07-23 18:03:05', 0, 'SysMenu', null, 'el-icon-s-unfold');
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (6, 3, '查看', 2, null, null, 'bnt.sysUser.list', null, 1, 1, '2021-05-31 18:05:37', '2023-07-20 11:30:19', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (7, 3, '添加', 2, null, null, 'bnt.sysUser.add', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (8, 8, '修改', 2, '', null, 'bnt.sysUser.update', null, 1, 1, '2021-05-31 00:00:00', '2023-07-20 11:34:22', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (9, 3, '删除', 2, null, null, 'bnt.sysUser.remove', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (10, 4, '查看', 2, null, null, 'bnt.sysRole.list', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (11, 4, '添加', 2, null, null, 'bnt.sysRole.add', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (12, 4, '修改', 2, null, null, 'bnt.sysRole.update', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (13, 4, '删除', 2, null, null, 'bnt.sysRole.remove', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (14, 5, '查看', 2, null, null, 'bnt.sysMenu.list', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (15, 5, '添加', 2, null, null, 'bnt.sysMenu.add', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (16, 5, '修改', 2, null, null, 'bnt.sysMenu.update', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (17, 5, '删除', 2, null, null, 'bnt.sysMenu.remove', null, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (18, 3, '分配角色', 2, null, null, 'bnt.sysUser.assignRole', null, 1, 1, '2022-05-23 17:14:32', '2023-07-20 11:30:15', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (19, 4, '分配权限', 2, 'assignAuth', 'system/sysRole/assignAuth', 'bnt.sysRole.assignAuth', null, 1, 1, '2022-05-23 17:18:14', '2023-07-23 13:54:29', 0, '', null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (20, 2, '权限管理', 0, '/home/getCountData', 'ParentView', '', 'el-icon-s-custom', 1, 1, '2023-07-19 20:29:34', '2023-07-21 21:53:06', 1, null, null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (21, 20, '权限', 1, '/home/getCountData', 'hoome', '', 'el-icon-s-tools', 1, 1, '2023-07-19 20:30:34', '2023-07-19 20:37:26', 1, null, null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (22, 2, '权限管理', 0, '/home/getCountData', 'ParentView', '', 'el-icon-s-tools', 1, 1, '2023-07-19 20:38:14', '2023-07-19 21:47:07', 1, null, null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (23, 4, 'q', 2, '', '', '', '', 1, 0, '2023-07-19 21:48:41', '2023-07-19 21:48:48', 1, null, null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (24, 2, '1', 1, '', '', '', '', 1, 1, '2023-07-19 21:54:07', '2023-07-19 21:54:12', 1, null, null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (25, 2, 'menu', 1, 'sendecho', 'system/Sendecho/Sendechoindex', '', 'el-icon-s-tools', 1, 1, '2023-07-20 11:41:47', '2023-07-20 15:39:17', 1, null, null, null);
INSERT INTO demo.sys_menu (id, parent_id, name, type, path, component, perms, icon, sort_value, status, create_time, update_time, is_deleted, route_name, redirect, vue2_icon) VALUES (26, 3, '修改', 2, '/home/getCountData', '/getCountData', '123', '', 1, 1, '2021-05-31 00:00:00', '2023-07-20 15:27:46', 1, 'System', null, null);
