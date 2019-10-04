library(DMwR)



d<- iris[,1:4]

local_pro<- lofactor(d[,-5],10)


print(local_pro)
