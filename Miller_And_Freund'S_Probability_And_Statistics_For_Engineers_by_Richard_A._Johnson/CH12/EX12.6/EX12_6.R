Source<-c('Treatments','Blocks','Error')
Treatment1<-c(13,8,9,6)
Treatment2<-c(7,3,6,4)
Treatment3<-c(13,7,12,8)
Temp<-c(Treatment1,Treatment2,Treatment3)
f = c("Item1", "Item2", "Item3", "Item4") 
k = 4 # number of treatment levels 
n = 3 # number of control blocks 
tm = gl(k, 1, n*k, factor(f))   # matching treatment 
tm
blk = gl(n, k, k*n)             # blocking factor 
blk 
av = aov(Temp ~blk+ tm)
summary(av)
F0.05=qf(1-0.05,2,6)
cat("The value of F0.05 with 2 and 6 degrees of freedom is 5.14, so we reject the null
hypothesis of equal mean particulate material removal. Blocking was important because
    we also reject the null hypothesis of equal block means")

