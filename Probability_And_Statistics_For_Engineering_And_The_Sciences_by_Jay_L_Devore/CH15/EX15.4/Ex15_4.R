#Ex15.4, Page 637

Polluted<-c(21.3,18.7,23.0,17.1,16.8,20.9,19.7)
Unpolluted<-c(14.2,18.3,17.2,18.4,20.0)

#Performing Wilcoxon rank sum test....
print(wilcox.test(Polluted,Unpolluted,conf.level=0.99))