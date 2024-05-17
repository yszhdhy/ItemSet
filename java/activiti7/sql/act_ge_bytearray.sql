create table act_ge_bytearray
(
    ID_            varchar(64)  not null
        primary key,
    REV_           int          null,
    NAME_          varchar(255) null,
    DEPLOYMENT_ID_ varchar(64)  null,
    BYTES_         longblob     null,
    GENERATED_     tinyint      null,
    constraint ACT_FK_BYTEARR_DEPL
        foreign key (DEPLOYMENT_ID_) references act_re_deployment (ID_)
)
    collate = utf8mb3_bin;

INSERT INTO `guigu-oa`.act_ge_bytearray (ID_, REV_, NAME_, DEPLOYMENT_ID_, BYTES_, GENERATED_) VALUES ('e52c2aa3-f798-11ed-8b3a-5614f3a83dd8', 1, 'baozhang.bpmn20.xml', 'e52c2aa2-f798-11ed-8b3a-5614f3a83dd8', 0x3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554462D38223F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A61637469766974693D22687474703A2F2F61637469766974692E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22687474703A2F2F7777772E61637469766974692E6F72672F70726F63657373646566223E0A20203C70726F636573732069643D2262616F7A68616E672220697345786563757461626C653D2274727565223E0A202020203C73746172744576656E742069643D227369642D41363632373142442D433737442D344134302D423638422D303531313646423432384145223E3C2F73746172744576656E743E0A202020203C757365725461736B2069643D227369642D35394134354235382D453932312D343638382D393144302D30333731304239383037323622206E616D653D22E99988E58991E8B1AAE5AEA1E689B9222061637469766974693A61737369676E65653D22E99988E58991E8B1AA223E3C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D34334335423538372D363239332D344545412D383243322D4334353936393546333544322220736F757263655265663D227369642D41363632373142442D433737442D344134302D423638422D30353131364642343238414522207461726765745265663D227369642D35394134354235382D453932312D343638382D393144302D303337313042393830373236223E3C2F73657175656E6365466C6F773E0A202020203C757365725461736B2069643D227369642D46314639433546332D423946382D343744362D423643442D43373443383037353433363922206E616D653D22E88296E5A4A7E6B5B7E5AEA1E689B9222061637469766974693A61737369676E65653D22E88296E5A4A7E6B5B7223E3C2F757365725461736B3E0A202020203C73657175656E6365466C6F772069643D227369642D34394444463645412D304335382D343445412D424139372D4132414438453335364544312220736F757263655265663D227369642D35394134354235382D453932312D343638382D393144302D30333731304239383037323622207461726765745265663D227369642D46314639433546332D423946382D343744362D423643442D433734433830373534333639223E3C2F73657175656E6365466C6F773E0A202020203C656E644576656E742069643D227369642D34303542373842362D313242382D343439352D384132432D313330333644314639343432223E3C2F656E644576656E743E0A202020203C73657175656E6365466C6F772069643D227369642D37444542463345442D323544362D343933372D414333462D3933373845464346393846452220736F757263655265663D227369642D46314639433546332D423946382D343744362D423643442D43373443383037353433363922207461726765745265663D227369642D34303542373842362D313242382D343439352D384132432D313330333644314639343432223E3C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F62616F7A68616E67223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D2262616F7A68616E67222069643D2242504D4E506C616E655F62616F7A68616E67223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D41363632373142442D433737442D344134302D423638422D303531313646423432384145222069643D2242504D4E53686170655F7369642D41363632373142442D433737442D344134302D423638422D303531313646423432384145223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2232392E39393939393939393939393939372220783D223230392E39393939393036313232363838372220793D2238392E3939393939353937363638363636223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D35394134354235382D453932312D343638382D393144302D303337313042393830373236222069643D2242504D4E53686170655F7369642D35394134354235382D453932312D343638382D393144302D303337313042393830373236223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2237392E3939393939393939393939393939222077696474683D223130302E302220783D223238342E39393939393036313232363838352220793D2236342E3939393939353937363638363636223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D46314639433546332D423946382D343744362D423643442D433734433830373534333639222069643D2242504D4E53686170655F7369642D46314639433546332D423946382D343744362D423643442D433734433830373534333639223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2238302E30222077696474683D223130302E30303030303030303030303030362220783D223432392E39393939393036313232363838352220793D2236342E3939393939353937363638363635223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D227369642D34303542373842362D313242382D343439352D384132432D313330333644314639343432222069643D2242504D4E53686170655F7369642D34303542373842362D313242382D343439352D384132432D313330333644314639343432223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223537342E393939393930363132323638392220793D2239302E3939393939353937363638363635223E3C2F6F6D6764633A426F756E64733E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D34394444463645412D304335382D343445412D424139372D413241443845333536454431222069643D2242504D4E456467655F7369642D34394444463645412D304335382D343445412D424139372D413241443845333536454431223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223338342E39393939393036313232363838352220793D223130342E3939393939353937363638363635223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223432392E39393939393036313232363838352220793D223130342E3939393939353937363638363635223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D34334335423538372D363239332D344545412D383243322D433435393639354633354432222069643D2242504D4E456467655F7369642D34334335423538372D363239332D344545412D383243322D433435393639354633354432223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223233392E39393939393036313232363838352220793D223130342E3939393939353937363638363636223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223238342E39393939393036313232363838352220793D223130342E3939393939353937363638363635223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D227369642D37444542463345442D323544362D343933372D414333462D393337384546434639384645222069643D2242504D4E456467655F7369642D37444542463345442D323544362D343933372D414333462D393337384546434639384645223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223532392E393939393930363132323638392220793D223130342E3939393939353937363638363635223E3C2F6F6D6764693A776179706F696E743E0A20202020202020203C6F6D6764693A776179706F696E7420783D223537342E393939393930363132323638392220793D223130342E3939393939353937363638363635223E3C2F6F6D6764693A776179706F696E743E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, 0);
