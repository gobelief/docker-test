# POSTGRES
### 常用数据类型
>* 整型:serial,bigserial,smallint,int,bigint
>* 浮点型:decimal/numeric,real,double precision
>* 字符串:varchar,char,text
>* 日期:date,timestamp,interval,time
>* 货币:money
>* json/jsonp,xml  
### 数据类型描述
>* 整型:serial(自增ID,4B),bigserial(自增ID,8B),smallint(2B),int(4B),bigint(8B)
>* 浮点型:decimal/numeric(变长,精度准确),real(4B),double precision(8B)
>* 字符串:varchar(变长字符串,MAX:1GB,空间:4+实际字符串长度),char(定长,空间:4+n),text
>* 日期:date(日期,4B),timestamp(日期和时间,8B),interval(时间间隔,12B),time(一日内的时间，8B)
