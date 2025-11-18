--! qt:dataset:src
--! qt:dataset:alltypesorc
set hive.mapred.mode=nonstrict;
set hive.explain.user=false;
set hive.limit.pushdown.memory.usage=0.3f;
set hive.optimize.reducededuplication.min.reducer=1;



select value, sum(key + 1) as sum from src group by value order by value limit 20;
select * from src order by value limit 20;