fr<-c(6,11,11,17,17,17,22,22,22,22,22,27,27,27,27,32,32,32,37,37)
H=40.5
L=5.5
Range = H - L
Width = ceiling(Range/7)
#though the question specifies lower limit as 99.5 and upper limit as 134.5, the considered upper and lower limits are 100 and 135
fr.h=hist(fr,main="Histogram of Recorded Temparatures",xlab="temparature",border="red",col="yellow",xlim=c(5,41),las=1,breaks=Width)
fr.h
#using package "mosaic"
library(mosaic)
freqpoly(fr)
library(agricolae)
ogive.freq(fr.h, xlab="miles", ylab="relative cumulative frequency")
#install package "agricolae"