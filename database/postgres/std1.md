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
