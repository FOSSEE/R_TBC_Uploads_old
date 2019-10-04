library(sqldf)

DataFrame <- data.frame(Seq = rep(10:20, each = 5),tra = rep(1:11,5))

SelQue <- sqldf("select Seq, tra from DataFrame
natural join (select Seq, avg(tra) as avg_tra from DataFrame group by Seq)
where tra> avg_tra")


print(SelQue)
