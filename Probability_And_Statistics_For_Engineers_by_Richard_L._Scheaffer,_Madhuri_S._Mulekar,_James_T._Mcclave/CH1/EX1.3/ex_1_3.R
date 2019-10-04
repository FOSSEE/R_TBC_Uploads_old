source =c("Fuel","Industrial","Transport","Misc")
CO1990 =c(5.510,5.582,76.635,11.122)
CO2000 =c(4.500,7.521,76.383,20.806)
data1 <- data.frame(CO1990, source)
data2  <- data1[order(data1[,1],decreasing=TRUE),]
barplot(data2[,1],names.arg=data2[,2],ylim = c(0,100),space = 0)

data3 <- data.frame(CO2000,source)
data4  <- data3[order(data3[,1],decreasing=TRUE),]
 barplot(data4[,1],names.arg=data4[,2],ylim = c(0,100),space = 0)
 
VOC1990 =c(1.005,10.000,8.988,1.059)
VOC2000 =c(1.206,8.033,8.396,2.710)

data5 <- data.frame(VOC1990, source)
data6  <- data5[order(data5[,1],decreasing=TRUE),]
barplot(data6[,1],names.arg=data6[,2],ylim = c(0,100),space = 0)

data7 <- data.frame(VOC2000,source)
data8  <- data7[order(data7[,1],decreasing=TRUE),]
barplot(data8[,1],names.arg=data8[,2],ylim = c(0,100),space = 0)

#Graph for VOC compounds plotted in book is incorrect
