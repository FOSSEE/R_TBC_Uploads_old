#Page.no 8.48 - 8.50

scores<-c(35,40,32,31,20,18,12,32,10,10)

items<-c(1,1,1,1,0,0,0,1,0,0)

library("ltm") # Packge contains point biserial correlation function

r_pbis<-biserial.cor(scores,items,level = 2)

cat("Point-biserial correlation is ",r_pbis)
