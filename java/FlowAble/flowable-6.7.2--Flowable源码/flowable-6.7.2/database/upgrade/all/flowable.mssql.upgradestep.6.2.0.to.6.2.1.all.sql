update ACT_GE_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'common.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'identitylink.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'task.schema.version';

update ACT_GE_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'variable.schema.version';

alter table ACT_RU_JOB add SCOPE_ID_ nvarchar(255);
alter table ACT_RU_JOB add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_RU_JOB add SCOPE_TYPE_ nvarchar(255);
alter table ACT_RU_JOB add SCOPE_DEFINITION_ID_ nvarchar(255);

alter table ACT_RU_TIMER_JOB add SCOPE_ID_ nvarchar(255);
alter table ACT_RU_TIMER_JOB add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_RU_TIMER_JOB add SCOPE_TYPE_ nvarchar(255);
alter table ACT_RU_TIMER_JOB add SCOPE_DEFINITION_ID_ nvarchar(255);

alter table ACT_RU_SUSPENDED_JOB add SCOPE_ID_ nvarchar(255);
alter table ACT_RU_SUSPENDED_JOB add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_RU_SUSPENDED_JOB add SCOPE_TYPE_ nvarchar(255);
alter table ACT_RU_SUSPENDED_JOB add SCOPE_DEFINITION_ID_ nvarchar(255);

alter table ACT_RU_DEADLETTER_JOB add SCOPE_ID_ nvarchar(255);
alter table ACT_RU_DEADLETTER_JOB add SUB_SCOPE_ID_ nvarchar(255);
alter table ACT_RU_DEADLETTER_JOB add SCOPE_TYPE_ nvarchar(255);
alter table ACT_RU_DEADLETTER_JOB add SCOPE_DEFINITION_ID_ nvarchar(255);

create index ACT_IDX_JOB_SCOPE on ACT_RU_JOB(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_JOB_SUB_SCOPE on ACT_RU_JOB(SUB_SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_JOB_SCOPE_DEF on ACT_RU_JOB(SCOPE_DEFINITION_ID_, SCOPE_TYPE_);

create index ACT_IDX_TJOB_SCOPE on ACT_RU_TIMER_JOB(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_TJOB_SUB_SCOPE on ACT_RU_TIMER_JOB(SUB_SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_TJOB_SCOPE_DEF on ACT_RU_TIMER_JOB(SCOPE_DEFINITION_ID_, SCOPE_TYPE_); 

create index ACT_IDX_SJOB_SCOPE on ACT_RU_SUSPENDED_JOB(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_SJOB_SUB_SCOPE on ACT_RU_SUSPENDED_JOB(SUB_SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_SJOB_SCOPE_DEF on ACT_RU_SUSPENDED_JOB(SCOPE_DEFINITION_ID_, SCOPE_TYPE_);   

create index ACT_IDX_DJOB_SCOPE on ACT_RU_DEADLETTER_JOB(SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_DJOB_SUB_SCOPE on ACT_RU_DEADLETTER_JOB(SUB_SCOPE_ID_, SCOPE_TYPE_);
create index ACT_IDX_DJOB_SCOPE_DEF on ACT_RU_DEADLETTER_JOB(SCOPE_DEFINITION_ID_, SCOPE_TYPE_); 

alter table ACT_RU_JOB add CUSTOM_VALUES_ID_ nvarchar(64);
alter table ACT_RU_TIMER_JOB add CUSTOM_VALUES_ID_ nvarchar(64);
alter table ACT_RU_SUSPENDED_JOB add CUSTOM_VALUES_ID_ nvarchar(64);
alter table ACT_RU_DEADLETTER_JOB add CUSTOM_VALUES_ID_ nvarchar(64);
alter table ACT_RU_HISTORY_JOB add CUSTOM_VALUES_ID_ nvarchar(64);

create index ACT_IDX_JOB_CUSTOM_VALUES_ID on ACT_RU_JOB(CUSTOM_VALUES_ID_);
create index ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID on ACT_RU_TIMER_JOB(CUSTOM_VALUES_ID_);
create index ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID on ACT_RU_SUSPENDED_JOB(CUSTOM_VALUES_ID_);
create index ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID on ACT_RU_DEADLETTER_JOB(CUSTOM_VALUES_ID_);

alter table ACT_RU_JOB
    add constraint ACT_FK_JOB_CUSTOM_VALUES
    foreign key (CUSTOM_VALUES_ID_)
    references ACT_GE_BYTEARRAY (ID_);

alter table ACT_RU_TIMER_JOB
    add constraint ACT_FK_TIMER_JOB_CUSTOM_VALUES
    foreign key (CUSTOM_VALUES_ID_)
    references ACT_GE_BYTEARRAY (ID_);

alter table ACT_RU_SUSPENDED_JOB
    add constraint ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES
    foreign key (CUSTOM_VALUES_ID_)
    references ACT_GE_BYTEARRAY (ID_);

alter table ACT_RU_DEADLETTER_JOB
    add constraint ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES
    foreign key (CUSTOM_VALUES_ID_)
    references ACT_GE_BYTEARRAY (ID_);

update ACT_GE_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'job.schema.version';
update ACT_GE_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'schema.version';

update ACT_ID_PROPERTY set VALUE_ = '6.2.1.0' where NAME_ = 'schema.version';

UPDATE [ACT_CMMN_DATABASECHANGELOGLOCK] SET [LOCKED] = 1, [LOCKEDBY] = '192.168.1.5 (192.168.1.5)', [LOCKGRANTED] = '2019-03-13T21:41:20.512' WHERE [ID] = 1 AND [LOCKED] = 0

ALTER TABLE [ACT_CMMN_CASEDEF] ADD [DGRM_RESOURCE_NAME_] [varchar](4000)

ALTER TABLE [ACT_CMMN_CASEDEF] ADD [HAS_START_FORM_KEY_] [bit]

ALTER TABLE [ACT_CMMN_DEPLOYMENT_RESOURCE] ADD [GENERATED_] [bit]

ALTER TABLE [ACT_CMMN_RU_CASE_INST] ADD [LOCK_TIME_] [datetime]

ALTER TABLE [ACT_CMMN_RU_PLAN_ITEM_INST] ADD [ITEM_DEFINITION_ID_] [varchar](255)

ALTER TABLE [ACT_CMMN_RU_PLAN_ITEM_INST] ADD [ITEM_DEFINITION_TYPE_] [varchar](255)

INSERT INTO [ACT_CMMN_DATABASECHANGELOG] ([ID], [AUTHOR], [FILENAME], [DATEEXECUTED], [ORDEREXECUTED], [MD5SUM], [DESCRIPTION], [COMMENTS], [EXECTYPE], [CONTEXTS], [LABELS], [LIQUIBASE], [DEPLOYMENT_ID]) VALUES ('2', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', GETDATE(), 2, '7:72a1f3f4767524ec0e22288a1621ebb9', 'addColumn tableName=ACT_CMMN_CASEDEF; addColumn tableName=ACT_CMMN_DEPLOYMENT_RESOURCE; addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST', '', 'EXECUTED', NULL, NULL, '3.5.3', '2509681303')

UPDATE [ACT_CMMN_DATABASECHANGELOGLOCK] SET [LOCKED] = 0, [LOCKEDBY] = NULL, [LOCKGRANTED] = NULL WHERE [ID] = 1



UPDATE [ACT_DMN_DATABASECHANGELOGLOCK] SET [LOCKED] = 1, [LOCKEDBY] = '192.168.1.5 (192.168.1.5)', [LOCKGRANTED] = '2019-03-13T21:41:27.977' WHERE [ID] = 1 AND [LOCKED] = 0

UPDATE [ACT_DMN_DATABASECHANGELOGLOCK] SET [LOCKED] = 0, [LOCKEDBY] = NULL, [LOCKGRANTED] = NULL WHERE [ID] = 1



UPDATE [ACT_FO_DATABASECHANGELOGLOCK] SET [LOCKED] = 1, [LOCKEDBY] = '192.168.1.5 (192.168.1.5)', [LOCKGRANTED] = '2019-03-13T21:41:34.801' WHERE [ID] = 1 AND [LOCKED] = 0

UPDATE [ACT_FO_DATABASECHANGELOGLOCK] SET [LOCKED] = 0, [LOCKEDBY] = NULL, [LOCKGRANTED] = NULL WHERE [ID] = 1



UPDATE [ACT_CO_DATABASECHANGELOGLOCK] SET [LOCKED] = 1, [LOCKEDBY] = '192.168.1.5 (192.168.1.5)', [LOCKGRANTED] = '2019-03-13T21:41:41.571' WHERE [ID] = 1 AND [LOCKED] = 0

UPDATE [ACT_CO_DATABASECHANGELOGLOCK] SET [LOCKED] = 0, [LOCKEDBY] = NULL, [LOCKGRANTED] = NULL WHERE [ID] = 1

