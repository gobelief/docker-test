# TRIGGER(触发器)
### 基础
>* 用于加强数据的完整性和业务规则约束等
>* 特殊的存储过程,PG的触发器创建必须现有可执行函数,函数返回类型为触发器类型
>* 触发器分为行级触发器和语句级触发器,行级就是该触发器所影响的行数据,语句是单次有效

### 触发器函数中可用的特殊变量
* NEW：新的行数据,语句级别与DELETE操作没有数据,数据类型为'RECORD'
* OLD：旧的行数据,语句级别与INSERT操作没有数据,数据类型为'RECORD'
* TG_NAME：包含触发器的名称,类型为name
* TG_WHEN：内容为'BEFORE'或'AFTER'
* TG_LEVEL：内容为'ROW'或'STATEMENT'
* TG_OP：内容为DML操作之一(不包含SELECT,包含'TRUNCATE')
* TG_RELID：触发器所在表ID
* TG_TABLE_NAME：触发器所在表名称
* TG_TABLE_SCHEMA：触发器所在表模式
* TG_NARGS：触发器中的参数个数
* TG_ARGV[]：text数组;触发器中的参数
### 语法
```
Description: define a new trigger
Syntax:
CREATE [ CONSTRAINT ] TRIGGER name { BEFORE | AFTER | INSTEAD OF } { event [ OR ... ] }
    ON table_name
    [ FROM referenced_table_name ]
    [ NOT DEFERRABLE | [ DEFERRABLE ] [ INITIALLY IMMEDIATE | INITIALLY DEFERRED ] ]
    [ REFERENCING { { OLD | NEW } TABLE [ AS ] transition_relation_name } [ ... ] ]
    [ FOR [ EACH ] { ROW | STATEMENT } ]
    [ WHEN ( condition ) ]
    EXECUTE { FUNCTION | PROCEDURE } function_name ( arguments )

where event can be one of:

    INSERT
    UPDATE [ OF column_name [, ... ] ]
    DELETE
    TRUNCATE
```
### FUNCTION
```
Description: define a new function
Syntax:
CREATE [ OR REPLACE ] FUNCTION
    name ( [ [ argmode ] [ argname ] argtype [ { DEFAULT | = } default_expr ] [, ...] ] )
    [ RETURNS rettype
      | RETURNS TABLE ( column_name column_type [, ...] ) ]
  { LANGUAGE lang_name
    | TRANSFORM { FOR TYPE type_name } [, ... ]
    | WINDOW
    | IMMUTABLE | STABLE | VOLATILE | [ NOT ] LEAKPROOF
    | CALLED ON NULL INPUT | RETURNS NULL ON NULL INPUT | STRICT
    | [ EXTERNAL ] SECURITY INVOKER | [ EXTERNAL ] SECURITY DEFINER
    | PARALLEL { UNSAFE | RESTRICTED | SAFE }
    | COST execution_cost
    | ROWS result_rows
    | SET configuration_parameter { TO value | = value | FROM CURRENT }
    | AS 'definition'
    | AS 'obj_file', 'link_symbol'
  } ...

```
## 事件触发器
### 语法
```
Description: define a new event trigger
Syntax:
CREATE EVENT TRIGGER name
    ON event
    [ WHEN filter_variable IN (filter_value [, ... ]) [ AND ... ] ]
    EXECUTE { FUNCTION | PROCEDURE } function_name()
```
