create table act_ge_property
(
    NAME_  varchar(64)  not null
        primary key,
    VALUE_ varchar(300) null,
    REV_   int          null
)
    collate = utf8mb3_bin;

INSERT INTO `guigu-oa`.act_ge_property (NAME_, VALUE_, REV_) VALUES ('cfg.execution-related-entities-count', 'false', 1);
INSERT INTO `guigu-oa`.act_ge_property (NAME_, VALUE_, REV_) VALUES ('next.dbid', '1', 1);
INSERT INTO `guigu-oa`.act_ge_property (NAME_, VALUE_, REV_) VALUES ('schema.history', 'create(7.1.0-M6)', 1);
INSERT INTO `guigu-oa`.act_ge_property (NAME_, VALUE_, REV_) VALUES ('schema.version', '7.1.0-M6', 1);
