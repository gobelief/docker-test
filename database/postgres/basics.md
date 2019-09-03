# POSTGRES
### 常用数据类型
>* 整型：serial,bigserial,smallint,int,bigint
>* 浮点型：decimal/numeric,real,double precision
>* 字符串：varchar,char,text
>* 日期：date,timestamp,interval,time
>* 货币：money
>* 其它：json/jsonb,xml,enum,range
### 数据类型描述
>* 整型：serial(自增ID,4B),bigserial(自增ID,8B),smallint(2B),int(4B),bigint(8B)
>* 浮点型：decimal/numeric(变长,精度准确),real(4B),double precision(8B)
>* 字符串：varchar(变长字符串,MAX:1GB,空间:4+实际字符串长度),char(定长,空间:4+n),text
>* 日期：date(日期,4B),timestamp(日期和时间,8B),interval(时间间隔,12B),time(一日内的时间，8B)
### 类型转换语法
``` 
  type value | value::type
```
### 常用日期/日期函数
>* 同事务：current_date(当前日期),current_time(当日时间),current_timestamp/now(当前事务开始时间戳);当日真实时间:clock_timestamp
>* extract,date_part
### json与jsonb区别
>json类型存储直接存储原值,jsonb会解析成二进制格式,在使用时就不需要再次解析,索引jsonb的性能会更高。  
>json函数创建的类型都是json,但是可用类型转换转换为jsonb。json不能直接创建索引,但可以创建函数索引。jsonb可以直接创建索引:BTree、GIN,GIN索引可以高效的从jsonb内部的key/value中搜索数据,BTree只是简单的按照整个jsonb的大小方式索引,原则如下:
>* Object>Array>Boolean>Number>String>Null
>* 前面的数据比后面的数据大

>创建GIN索引方式有两种：jsonb_ops（default）,jsonb_path_ops  
```CREATE INDEX index_name ON table_name USING gin (index_col [jsonb_path_ops])```  
>默认的索引方式：每个key/value都是作为一个单独的索引项,jsonb_path_ops根据key/value组成一个hash值作为索引,所有通常json_path_ops的索引要比默认的索引值小很多,也就会提升一定的性能  
>函数索引创建：```CREATE INDEX ON table_name USING btree (json_extract_path_text(col_name,attr_name))```
### range类型索引和约束
>索引：GIST、SP-GIST、BTree(通常在排序时使用)
>约束：范围不重叠代码片段  
```EXCLUDE USING gist (col_name WITH &&)```
### 常用运算符
>@>：包含于  
>-|-：连接在一起  
>->：json取值  
>&&：重叠  
>||：数组连接
### 模式
>postgres中的schema就相当于mysql中的数据库,mysql的数据库在有些连接工具上显示的就是schema。postgres是不支持跨表查询,该功能就是通过模式来实现,通常来讲,查询表会在对应的的用户模式下查询,查询不到在查询public模式下的表,可通过```show search_path ;```查看
### TOAST存储属性
>只有变长属性支持TOAST,前4B(32Bit)为长度字,前2(Bit),一个表示压缩,一个表示是否行外存储,后30(Bit)位长度。如果一个表中有字段是可以TOAST的,会自动创建一个相关联的TOAST表,行外的内容存储在TOAST表里,其OID存储在表的pg_class.reltoastrelid记录里
### 临时表
>```CREATE TEMPORARY TABLE table_name(...) [action]``` action:    
>* ON COMMIT PRESERVE ROEWS：默认,会话级别
>* ON COMMIT DELETE ROWS：事务级别,事务结束数据消失
>* ON COMMIT DROP：事务级别,事务结束表消失
### 表继承及分区表
>创建表时使用INHERITS关键字,子表数据父表可看。
>分区表使用表继承实现,可在分区表创建索引,分表使用约束,查询WHERE语句过滤条件与表上的CHECK比对,可得到相应的表。
>分区表参数：constranint_exclusion值partition
