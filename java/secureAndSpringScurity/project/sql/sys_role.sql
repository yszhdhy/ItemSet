create table sys_role
(
    id          bigint auto_increment
        primary key,
    role_name   varchar(20)  null,
    role_code   varchar(20)  null,
    description varchar(255) null,
    create_time timestamp    null,
    update_time timestamp    null,
    is_deleted  tinyint      null
);

INSERT INTO demo.sys_role (id, role_name, role_code, description, create_time, update_time, is_deleted) VALUES (1, '系统管理员', 'SYSTEM', '系统管理员', '2021-05-31 18:09:18', '2022-06-08 09:21:10', 0);
INSERT INTO demo.sys_role (id, role_name, role_code, description, create_time, update_time, is_deleted) VALUES (2, '普通管理员', 'COMMON', '普通管理员', '2021-06-01 08:38:40', '2022-02-24 10:42:46', 0);
