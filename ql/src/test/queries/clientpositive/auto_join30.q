set hive.auto.convert.join = true;
set hive.compute.query.using.stats=false;
set hive.stats.fetch.column.stats=false;
set hive.cbo.enable=false;
set hive.stats.autogather=false;
set hive.stats.column.autogather=false;
set hive.vectorized.execution.enabled=false;

set hive.stats.estimate=false;
create table t_1(a int, b int);
insert into t_1 select 1,2;
insert into t_1 select 1,2;
insert into t_1 select 3,4;

select * from t_1 t1 join t_1 t2 on(t1.a=t2.a);

set hive.stats.estimate=true;

explain select * from t_1 t1 join t_1 t2 on(t1.a=t2.a);