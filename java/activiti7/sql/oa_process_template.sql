create table oa_process_template
(
    id                      bigint auto_increment comment '角色id'
        primary key,
    name                    varchar(20) default ''                not null comment '模板名称',
    icon_url                varchar(100)                          null comment '图标路径',
    process_type_id         varchar(255)                          null,
    form_props              text                                  null comment '表单属性',
    form_options            text                                  null comment '表单选项',
    process_definition_key  varchar(20)                           null comment '流程定义key',
    process_definition_path varchar(255)                          null comment '流程定义上传路径',
    process_model_id        varchar(255)                          null comment '流程定义模型id',
    description             varchar(255)                          null comment '描述',
    status                  tinyint     default 0                 not null,
    create_time             timestamp   default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time             timestamp   default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted              tinyint     default 0                 not null comment '删除标记（0:不可用 1:可用）'
)
    comment '审批模板' charset = utf8mb3;

INSERT INTO `guigu-oa`.oa_process_template (id, name, icon_url, process_type_id, form_props, form_options, process_definition_key, process_definition_path, process_model_id, description, status, create_time, update_time, is_deleted) VALUES (1, '加班', 'https://gw.alicdn.com/tfs/TB1bHOWCSzqK1RjSZFjXXblCFXa-112-112.png', '1', '[{"type":"datePicker","field":"sdate","title":"开始时间","info":"","_fc_drag_tag":"datePicker","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"datePicker","field":"edate","title":"结束时间","info":"","_fc_drag_tag":"datePicker","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"input","field":"day","title":"加班天数","info":"","_fc_drag_tag":"input","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"input","field":"reason","title":"加班原因","info":"","props":{"type":"textarea","rows":4},"_fc_drag_tag":"input","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"select","field":"dept","title":"所属部门","info":"","effect":{"fetch":""},"options":[{"value":"技术部","label":"技术部"},{"value":"产品部","label":"产品部"},{"label":"市场部","value":"市场部"},{"label":"人事部","value":"人事部"}],"_fc_drag_tag":"select","hidden":false,"display":true}]', '{
    "form": {
        "labelPosition": "right",
        "size": "medium",
        "labelWidth": "80px",
        "hideRequiredAsterisk": false,
        "showMessage": true,
        "inlineMessage": false
    },
    "submitBtn": {
                         "innerText":"提交审批 ",
                        "round":true,
                        "width": "280px",
                        "type":"primary"
                     },
    "resetBtn": false
}
', 'jiaban', '', '', '加班', 1, '2022-12-07 14:33:51', '2022-12-27 09:12:58', 0);
INSERT INTO `guigu-oa`.oa_process_template (id, name, icon_url, process_type_id, form_props, form_options, process_definition_key, process_definition_path, process_model_id, description, status, create_time, update_time, is_deleted) VALUES (2, '请假', 'https://gw.alicdn.com/imgextra/i3/O1CN01LLn0YV1LhBXs7T2iO_!!6000000001330-2-tps-120-120.png', '2', '[{"type":"datePicker","field":"sdate","title":"开始时间","info":"","_fc_drag_tag":"datePicker","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"datePicker","field":"edate","title":"结束时间","info":"","_fc_drag_tag":"datePicker","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"input","field":"day","title":"请假天数","info":"","_fc_drag_tag":"input","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"input","field":"reason","title":"请假原因","info":"","props":{"type":"textarea","rows":4},"_fc_drag_tag":"input","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"select","field":"dept","title":"所属部门","info":"","effect":{"fetch":""},"options":[{"value":"技术部","label":"技术部"},{"value":"产品部","label":"产品部"},{"label":"市场部","value":"市场部"},{"label":"人事部","value":"人事部"}],"_fc_drag_tag":"select","hidden":false,"display":true}]', '{
    "form": {
        "labelPosition": "right",
        "size": "medium",
        "labelWidth": "80px",
        "hideRequiredAsterisk": false,
        "showMessage": true,
        "inlineMessage": false
    },
    "submitBtn": {
                         "innerText":"提交审批 ",
                        "round":true,
                        "width": "280px",
                        "type":"primary"
                     },
    "resetBtn": false
}
', 'qingjia', '', '', '请假', 0, '2022-12-07 15:04:02', '2022-12-27 09:13:00', 0);
INSERT INTO `guigu-oa`.oa_process_template (id, name, icon_url, process_type_id, form_props, form_options, process_definition_key, process_definition_path, process_model_id, description, status, create_time, update_time, is_deleted) VALUES (3, '申请费用', 'https://gw.alicdn.com/tfs/TB1e76lCOLaK1RjSZFxXXamPFXa-112-112.png', '3', '[{"type":"datePicker","field":"sdate","title":"使用时间","info":"","_fc_drag_tag":"datePicker","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}],"props":{"format":""}},{"type":"input","field":"amount","title":"申请金额","info":"","_fc_drag_tag":"input","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"select","field":"F0ma1n7tec860p","title":"费用类别","info":"","effect":{"fetch":""},"options":[{"value":"房租费","label":"房租费"},{"value":"水费","label":"水费"},{"label":"电费","value":"电费"},{"label":"网络费","value":"网络费"},{"label":"火车票","value":"火车票"},{"label":"飞机票","value":"飞机票"},{"label":"部门团建费","value":"部门团建费"}],"_fc_drag_tag":"select","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"input","field":"reason","title":"其他补充","info":"","props":{"type":"textarea","rows":4},"_fc_drag_tag":"input","hidden":false,"display":true},{"type":"select","field":"dept","title":"所属部门","info":"","effect":{"fetch":""},"options":[{"value":"技术部","label":"技术部"},{"value":"产品部","label":"产品部"},{"label":"市场部","value":"市场部"},{"label":"人事部","value":"人事部"}],"_fc_drag_tag":"select","hidden":false,"display":true},{"type":"input","field":"content","title":"申请事由","info":"","props":{"type":"textarea","rows":4},"_fc_drag_tag":"input","hidden":false,"display":true,"validate":[{"trigger":"change","mode":"required","message":"必须输入","required":true,"type":"string"}]},{"type":"switch","field":"F9hn1n7twlkcfk","title":"消息提示","info":"","_fc_drag_tag":"switch","hidden":false,"display":true},{"type":"span","title":"注意","native":false,"children":["有疑问找云尚小秘哦！"],"_fc_drag_tag":"span","hidden":false,"display":true}]', ' ', 'feiyong', '', '', '申请费用', 1, '2022-12-08 10:35:33', '2022-12-26 21:00:01', 0);
INSERT INTO `guigu-oa`.oa_process_template (id, name, icon_url, process_type_id, form_props, form_options, process_definition_key, process_definition_path, process_model_id, description, status, create_time, update_time, is_deleted) VALUES (8, '报账', 'https://gw.alicdn.com/tfs/TB13f_aCQzoK1RjSZFlXXai4VXa-102-102.png', '3', '[{"type":"input","field":"activity","title":"活动标题","info":"","_fc_drag_tag":"input","hidden":false,"display":true},{"type":"input","field":"des","title":"活动具体描述","info":"","_fc_drag_tag":"input","hidden":false,"display":true},{"type":"input","field":"price","title":"活动消费","info":"","_fc_drag_tag":"input","hidden":false,"display":true},{"type":"upload","field":"update","title":"活动账单","info":"","props":{"action":""},"_fc_drag_tag":"upload","hidden":false,"display":true},{"type":"input","field":"account","title":"收款账户","info":"","_fc_drag_tag":"input","hidden":false,"display":true},{"type":"input","field":"name","title":"收款方姓名","info":"","_fc_drag_tag":"input","hidden":false,"display":true}]', '{"form":{"labelPosition":"right","size":"mini","labelWidth":"125px","hideRequiredAsterisk":false,"showMessage":true,"inlineMessage":false},"submitBtn":true,"resetBtn":false}', 'baozhang', 'processes/baozhang.zip', null, '报账', 1, '2023-05-21 13:32:23', '2023-05-21 13:32:23', 0);
