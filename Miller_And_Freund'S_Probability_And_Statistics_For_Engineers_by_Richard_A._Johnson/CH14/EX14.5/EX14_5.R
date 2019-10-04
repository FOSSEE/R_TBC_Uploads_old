#losses of worker-hours before and after safety programs in 10 industrial plants
Before<-c(45,73,46,12,43,57,83,34,26,17)
After<-c(36,60,44,19,35,51,77,29,24,11)
data<-cbind(Before,After)
#Ranks of the data 
Ri<-rank(Before)
Si<-rank(After)
n=10
#Calculate the Rs(rho) value with text case 
cor.test(Ri,Si,method=c("spearman"))
cat('This large positive value indicates strong association along an increasing curve')



