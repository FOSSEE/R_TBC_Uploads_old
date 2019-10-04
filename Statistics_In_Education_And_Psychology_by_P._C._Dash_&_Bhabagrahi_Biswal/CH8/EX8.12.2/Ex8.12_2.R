#Page.No 8.51-8.52

scores<-c(40,80,90,17,25)
items<-c(1,1,1,0,0)

library("ltm") # Packge contains point biserial correlation function

r_pbis<-biserial.cor(scores,items,level = 2)

cat("Point-biserial correlation is ",r_pbis,"high positive")