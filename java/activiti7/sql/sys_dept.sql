create table sys_dept
(
    id          bigint auto_increment
        primary key,
    name        varchar(50)  default ''                not null comment '部门名称',
    parent_id   bigint       default 0                 null comment '上级部门id',
    tree_path   varchar(255) default ','               null comment '树结构',
    sort_value  int          default 1                 null comment '排序',
    leader      varchar(20)                            null comment '负责人',
    phone       varchar(11)                            null comment '电话',
    status      tinyint(1)   default 1                 null comment '状态（1正常 0停用）',
    create_time timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    update_time timestamp                              null on update CURRENT_TIMESTAMP,
    is_deleted  tinyint      default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '组织机构' row_format = COMPACT;

INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1, '硅谷集团有限公司', 0, ',1,', 1, '张老师', '15659090912', 1, '2022-05-24 16:13:13', '2022-05-24 16:13:13', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (10, '北京校区', 1, ',1,10,', 1, '李老师', '18790007789', 1, '2022-05-24 16:13:15', '2022-05-24 16:13:15', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (20, '上海校区', 1, ',1,20,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:25', '2022-05-25 14:02:25', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (30, '深圳校区', 1, ',1,30,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:24', '2022-05-25 14:02:24', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1010, '教学部分', 10, ',1,10,1010,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:24', '2022-05-25 14:02:24', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1020, '运营部门', 10, ',1,10,1020,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:29', '2022-05-25 14:02:29', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1021, 'Java学科', 1010, ',1,10,1010,1021,', 1, '王老师', '15090987678', 1, '2022-05-24 16:13:31', '2022-05-24 16:13:31', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1022, '大数据学科', 1010, ',1,10,1010,1022,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:22', '2022-05-25 14:02:22', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1024, '前端学科', 1010, ',1,10,1010,1024,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:22', '2022-05-25 14:02:22', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1025, '客服', 1020, ',1,10,1020,1025,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:23', '2022-05-25 14:02:23', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1026, '网站推广', 1020, ',1,10,1020,1026,', 1, '30.607366', '15090987678', 1, '2022-05-25 14:02:26', '2022-05-25 14:02:26', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1027, '线下运营', 1020, ',1,10,1020,1027,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:26', '2022-05-25 14:02:26', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (1028, '设计', 1020, ',1,10,1020,1028,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:27', '2022-05-25 14:02:27', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (2012, '教学部门', 20, ',1,20,2012,', 1, '王老师', '18909890765', 1, '2022-05-24 16:13:51', '2022-05-24 16:13:51', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (2013, '教学部门', 30, ',1,30,2013,', 1, '李老师', '18567867895', 1, '2022-05-24 16:13:50', '2022-05-24 16:13:50', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (2016, 'Java学科', 2012, ',1,20,2012,2012,', 1, '张老师', '15090909909', 1, '2022-05-25 10:51:12', '2022-05-25 10:51:12', 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (2017, '大数据学科', 2012, ',1,20,2012,2012,', 1, '李老师', '15090980989', 1, '2022-05-27 09:11:54', null, 0);
INSERT INTO `guigu-oa`.sys_dept (id, name, parent_id, tree_path, sort_value, leader, phone, status, create_time, update_time, is_deleted) VALUES (2018, '人事部门', 1, ',1,1,', 1, '', '', 1, '2022-12-07 16:49:56', null, 0);
