create table sys_user_role
(
    id          bigint auto_increment
        primary key,
    role_id     bigint    null,
    user_id     bigint    null,
    create_time timestamp null,
    update_time timestamp null,
    is_deleted  tinyint   null
);

INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (2, 2, 2, '2022-01-20 20:49:37', '2022-02-24 10:43:07', 0);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (3, 1, 1, '2022-05-19 10:37:27', '2022-05-24 16:55:53', 1);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (4, 2, 1, '2022-05-19 10:37:27', '2022-05-24 16:55:53', 1);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (5, 1, 1, '2022-05-24 16:55:53', '2022-05-24 16:55:53', 0);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (6, 2, 3, '2022-05-25 16:09:31', '2022-05-25 16:09:31', 0);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (7, 2, 4, '2022-06-02 11:08:14', '2022-06-02 11:15:36', 1);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (8, 2, 4, '2022-06-02 11:15:36', '2022-06-02 16:10:53', 1);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (9, 1, 4, '2022-06-02 11:15:36', '2022-06-02 16:10:53', 1);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (10, 1, 4, '2022-06-02 16:10:53', '2023-04-28 08:36:36', 1);
INSERT INTO demo.sys_user_role (id, role_id, user_id, create_time, update_time, is_deleted) VALUES (11, 10, 4, '2023-04-28 08:36:36', '2023-04-28 08:36:36', 0);
