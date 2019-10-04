#Ex15.2, Page 630

library(stats)

IF_REE<-c(1753.7,1604.4,1576.5,1279.7,1754.2,1695.5,1700.1,1717.0)
Std_REE<-c(1755.0,1691.1,1697.1,1477.7,1785.2,1669.7,1901.3,1735.3)
Difference<-IF_REE-Std_REE

#Performing wilcoxon signed rank test
w1<-wilcox.test(Difference)     #or wilcox.test(IF_REE,Std_REE,paired=TRUE)
print(w1)

#Along with continuity correction
w2<-wilcox.test(Difference,exact=FALSE)   #or wilcox.test(IF_REE,Std_REE,paired=TRUE,exact=FALSE)
print(w2)