#Ex4.31, Page 186

old.par<-par(mfrow=c(1,1))

Percentile<-c(-2.97, -1.82, -1.25, -0.84, -0.51, -0.23, 0.05, 0.33, 0.64, 1.10)
x<-c(282, 501, 741, 851, 1072, 1122, 1202, 1585, 1905, 2138)
lnx<-c(log(282,base=exp(1)),log(501,base=exp(1)), log(741,base=exp(1)), log(851,base=exp(1)), log(1072,base=exp(1)),
         log(1122,base=exp(1)), log(1202,base=exp(1)), log(1585,base=exp(1)), log(1905,base=exp(1)), log(2138,base=exp(1)))
df<-data.frame(Percentile,x,lnx)
print(df)
plot(Percentile,lnx)

par(old.par)