# 时间取值有差异
* 检查服务器时间是否正确，不正确更改时区
* 检查docker容器的时间是否正确，不正确修改启动脚本，挂载时区  
>```-v /etc/localtime:/etc/localtime:ro```
* 最后设置springboot时区
>```  @PostConstruct  
>    void setDefaultTimezone() {
>        TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"));
>    }
>```