create database more_pineapple default character set utf8;
use  more_pineapple;
create table user(
 id bigint auto_increment primary key NOT NULL COMMENT '用户ID',
 name varchar(50) NOT NULL COMMENT '登录名',
 password varchar(100)  COMMENT '登录密码',
 salt varchar(100) NOT NULL COMMENT '盐值',
 phone_num varchar(200)  COMMENT '手机号',
 head_image varchar(200)   COMMENT '头像',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='后台用户信息表';

use  more_pineapple;
create table company_info(
 company_id bigint auto_increment primary key NOT NULL COMMENT '公司ID',
 company_name varchar(200) NOT NULL COMMENT '公司名称',
 company_slogan varchar(300) NOT NULL COMMENT '公司Slogan',
 number_of_companies bigint NOT NULL COMMENT '公司人数',
 financing_scale int NOT NULL COMMENT '融资规模天使轮、A轮、B轮、C轮、D轮及以上、上市、无需融资-------------0、1、2、3、4、5、6',
 city varchar(200) NOT NULL COMMENT '城市',
 area varchar(200) NOT NULL COMMENT '区县',
 company_industry int NOT NULL COMMENT '公司行业移动互联网、电子商务、企业服务、O2O、教育、金融、游戏----------0、1、2、3、4、5、6',
 company_logo varchar(200)  COMMENT '公司logo',
 company_profile varchar(1000) NOT NULL COMMENT '公司简介',
 company_tag varchar(100) NOT NULL COMMENT '公司标签',
 Is_approve int NOT NULL COMMENT '认证状态：0:未认证1:已认证',
 Is_frozen int NOT NULL COMMENT '公司冻结状态：0:未冻结1:已冻结',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司信息表';

use  more_pineapple;
create table company_produce(
 id bigint auto_increment primary key NOT NULL COMMENT '产品ID',
 company_id bigint NOT NULL COMMENT '公司id：与 company_info 表中的 id 对应',
 produce_name varchar(100) NOT NULL COMMENT '产品名称',
 produce_slogan varchar(100) NOT NULL COMMENT '产品slogan',
 produce_logo varchar(100)  COMMENT '产品logo',
 product_introduction varchar(100) NOT NULL COMMENT '产品介绍',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='公司产品';

use  more_pineapple;
create table recruiting_company_information(
 id bigint auto_increment primary key NOT NULL COMMENT '相关信息id',
 company_id bigint NOT NULL COMMENT '公司id：与 company_info 表中的 id 对应',
 phone varchar(100) NOT NULL COMMENT '招聘电话',
 email varchar(100) NOT NULL COMMENT '招聘邮件',
 adress varchar(200)  COMMENT '公司详细地址',
 map varchar(100)  COMMENT '公司地图',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='招聘公司相关信息表';

use  more_pineapple;
create table position_info(
 position_id bigint auto_increment primary key NOT NULL COMMENT '职位id',
 is_recommend int NOT NULL COMMENT '是否推荐：0:未推荐1:已推荐',
 position_name varchar(100) NOT NULL COMMENT '职位',
 company_id bigint  COMMENT '公司id',
 company_name varchar(100) NOT NULL COMMENT '公司名称',
 work_experience int NOT NULL COMMENT '工作经验:见约定',
 education int NOT NULL COMMENT '学历：高中及以下、大专、本科、硕士、博士---0、1、2、3、4',
 salary int NOT NULL COMMENT '薪资：8K以下、8-15K、16-25K、26k及以上----0、1、2、3',
 position_type int NOT NULL COMMENT '职业类型：产品、UI、QA、Android、IOS、WEB、OP、Java、NLP，DM，DL----0、1、2、3、4、5、6、7、8、9、10',
 position_tag varchar(255) NOT NULL COMMENT '职位标签',
 positionlevel varchar(255) NOT NULL COMMENT '职位等级：助理、初级、中级、高级、总监 ---------0、1、2、3、4',
 post_duties varchar(500) NOT NULL COMMENT '岗位职责',
 skills varchar(500) NOT NULL COMMENT '必备技能',
 welfare varchar(200) NOT NULL COMMENT '公司福利',
 online_time bigint  COMMENT '上线时间：对应新增需求：定时上线',
 is_online int NOT NULL COMMENT '上线状态:下架状态：0 上架状态：1',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='职位信息表';

use  more_pineapple;
create table banner_show(
 id bigint auto_increment primary key NOT NULL COMMENT 'banner图id',
 type int NOT NULL COMMENT 'banner图类型：首页、找职位、找精英 --------- 1、2、3',
 tiles_name varchar(100) NOT NULL COMMENT '标题名称',
 photo varchar(100)  COMMENT '图片',
 is_online int NOT NULL COMMENT '是否上线：0:未上线1:已上线',
 jump_url varchar(100)  COMMENT '点击图片跳转链接',
 industry_type int NOT NULL COMMENT '见约定',
 online_time bigint NOT NULL COMMENT '上线时间',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='banner图展示表';

use  more_pineapple;
create table user_roler(
 id int auto_increment primary key NOT NULL COMMENT 'id：与 User 表中的id 对应',
 user_id bigint NOT NULL COMMENT '用户id',
 role_id bigint NOT NULL COMMENT '角色id',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用户角色表';

use  more_pineapple;
create table role(
 id int auto_increment primary key NOT NULL COMMENT '角色id',
 role_name varchar(200) NOT NULL COMMENT '角色名称',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色表';

use  more_pineapple;
create table role_permission(
 id int auto_increment primary key NOT NULL COMMENT 'id',
 role_id int NOT NULL COMMENT '角色ID：与 role 表中的 id 对应',
 node_id int NOT NULL COMMENT '权限id：与 permission 表中的 id 对应',
 status varchar(200) NOT NULL COMMENT '描述',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='角色权限关联表';

use  more_pineapple;
create table permission(
 id int auto_increment primary key NOT NULL COMMENT 'id',
 permission_name varchar(100) NOT NULL COMMENT '权限名',
 in_new int NOT NULL COMMENT '新增',
 in_edit int NOT NULL COMMENT '编辑',
 in_delete int NOT NULL COMMENT '删除',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='权限表';

use  more_pineapple;
create table module_table(
 id int auto_increment primary key NOT NULL COMMENT 'id',
 name varchar(100) NOT NULL COMMENT '模块名',
 menuld varchar(100) NOT NULL COMMENT '模块ID',
 url varchar(200) NOT NULL COMMENT 'URL地址',
 parent_module_ID int NOT NULL COMMENT '父模块ID',
 module_category varchar(100) NOT NULL COMMENT '模块类别',
 gmt_create bigint NOT NULL COMMENT '注册时间',
 gmt_update bigint NOT NULL COMMENT '更新时间',
 create_by varchar(100) NOT NULL COMMENT '创建人',
 update_by varchar(100) NOT NULL COMMENT '更新人 ')
 ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='模块管理表';
