create table sys_user
(
    id          bigint auto_increment
        primary key,
    username    varchar(20)  null,
    password    varchar(255) null,
    name        varchar(50)  null,
    phone       varchar(11)  null,
    head_url    varchar(200) null,
    dept_id     bigint       null,
    post_id     bigint       null,
    open_id     varchar(255) null,
    description varchar(255) null,
    status      tinyint      null,
    create_time timestamp    null,
    update_time timestamp    null,
    is_deleted  tinyint      null
);

INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (1, 'admin', '$2a$10$y6/GsWy43nr/SdzjohUV/uU6.Ww8sS4wnXiE7AGE1bhf4h1gPp.pG', 'admin', '15000000000', 'http://r61cnlsfq.hn-bkt.clouddn.com/7daa4595-dfde-45da-8513-c5c2b81d20cc', 1022, null, '', null, 1, '2021-05-31 18:08:43', '2024-04-19 19:13:30', 0);
INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (2, 'wjl', '96e79218965eb72c92a549dd5a330112', '王经理', '15000000002', 'http://r61cnlsfq.hn-bkt.clouddn.com/b09b3467-3d99-437a-bd2e-dd8c9be92bb8', 1022, 6, '', null, 1, '2022-02-08 10:35:38', '2022-12-22 10:05:03', 0);
INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (3, 'lrsjl', '96e79218965eb72c92a549dd5a330112', '李人事经理', '15000000004', null, 2018, 5, '', null, 1, '2022-05-24 11:05:40', '2022-12-22 10:05:21', 0);
INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (4, 'lisi', '96e79218965eb72c92a549dd5a330112', '李四', '15000000001', null, 1021, 10, 'omwf25izKON9dktgoy0dogqvnGhk', null, 1, '2022-12-06 09:32:31', '2022-12-21 09:25:06', 0);
INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (5, 'zzjl', '96e79218965eb72c92a549dd5a330112', '张总经理', '15000000003', null, 10, 8, '', null, 1, '2022-12-07 16:47:00', '2022-12-22 10:05:07', 0);
INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (6, 'xkfzr', '96e79218965eb72c92a549dd5a330112', '张学科', '15000000005', null, 1010, 11, null, null, 1, '2022-12-14 09:18:12', '2022-12-14 09:18:12', 0);
INSERT INTO demo.sys_user (id, username, password, name, phone, head_url, dept_id, post_id, open_id, description, status, create_time, update_time, is_deleted) VALUES (7, 'zhangsan', '96e79218965eb72c92a549dd5a330112', '张三', '15000000006', null, 1021, 10, null, null, 1, '2022-12-26 11:26:45', '2022-12-27 09:11:37', 0);
