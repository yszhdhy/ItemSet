create table oa_process_type
(
    id          bigint auto_increment comment 'id'
        primary key,
    name        varchar(20) default ''                not null comment '类型名称',
    description varchar(255)                          null comment '描述',
    create_time timestamp   default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted  tinyint     default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '审批类型' charset = utf8mb3;

INSERT INTO `guigu-oa`.oa_process_type (id, name, description, create_time, update_time, is_deleted) VALUES (1, '出勤', '出勤', '2022-12-06 09:35:12', '2022-12-06 09:36:13', 0);
INSERT INTO `guigu-oa`.oa_process_type (id, name, description, create_time, update_time, is_deleted) VALUES (2, '人事', '人事', '2022-12-06 09:35:19', '2022-12-06 09:36:16', 0);
INSERT INTO `guigu-oa`.oa_process_type (id, name, description, create_time, update_time, is_deleted) VALUES (3, '财务', '财务', '2022-12-06 09:35:29', '2022-12-06 09:36:17', 0);
