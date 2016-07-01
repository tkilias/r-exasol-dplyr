
library(exasol)
library(nycflights13)

#con <- src_exasol(dsn = "exasolution-uo2214lv1_64", schema = "PUB864")
con <- src_exasol(dsn = "EXASolo", schema ="PUB864")


fl_tbl <- copy_to(con, flights, "PUB864.FLIGHTS")
# dbGetQuery(con$con, "drop table PUB864.FLIGHTS")

filter(fl_tbl, month == 1, day == 1)

filter(fl_tbl, month == 1 | month == 2)

slice(fl_tbl,1:10)
# TODO slice
# 

arrange(fl_tbl, desc(year), month, desc(day))

select(fl_tbl, year, month, day)
select(fl_tbl, year:day)
select(fl_tbl, -(year:day))
select(fl_tbl, tail_num = tailnum)

rename(fl_tbl, tail_num = tailnum)

distinct(select(fl_tbl, tailnum))
# TODO: distinct

tdf <- mutate(fl_tbl,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60)

summarise(fl_tbl,
          delay = mean(month))
# TODO: summarise

sample_n(fl_tbl, 10)
# TODO: sample
