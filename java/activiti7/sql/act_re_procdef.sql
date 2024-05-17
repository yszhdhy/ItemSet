create table act_re_procdef
(
    ID_                     varchar(64)             not null
        primary key,
    REV_                    int                     null,
    CATEGORY_               varchar(255)            null,
    NAME_                   varchar(255)            null,
    KEY_                    varchar(255)            not null,
    VERSION_                int                     not null,
    DEPLOYMENT_ID_          varchar(64)             null,
    RESOURCE_NAME_          varchar(4000)           null,
    DGRM_RESOURCE_NAME_     varchar(4000)           null,
    DESCRIPTION_            varchar(4000)           null,
    HAS_START_FORM_KEY_     tinyint                 null,
    HAS_GRAPHICAL_NOTATION_ tinyint                 null,
    SUSPENSION_STATE_       int                     null,
    TENANT_ID_              varchar(255) default '' null,
    ENGINE_VERSION_         varchar(255)            null,
    APP_VERSION_            int                     null,
    constraint ACT_UNIQ_PROCDEF
        unique (KEY_, VERSION_, TENANT_ID_)
)
    collate = utf8mb3_bin;

INSERT INTO `guigu-oa`.act_re_procdef (ID_, REV_, CATEGORY_, NAME_, KEY_, VERSION_, DEPLOYMENT_ID_, RESOURCE_NAME_, DGRM_RESOURCE_NAME_, DESCRIPTION_, HAS_START_FORM_KEY_, HAS_GRAPHICAL_NOTATION_, SUSPENSION_STATE_, TENANT_ID_, ENGINE_VERSION_, APP_VERSION_) VALUES ('baozhang:1:e540c414-f798-11ed-8b3a-5614f3a83dd8', 1, 'http://www.activiti.org/processdef', null, 'baozhang', 1, 'e52c2aa2-f798-11ed-8b3a-5614f3a83dd8', 'baozhang.bpmn20.xml', null, null, 0, 1, 1, '', null, null);
