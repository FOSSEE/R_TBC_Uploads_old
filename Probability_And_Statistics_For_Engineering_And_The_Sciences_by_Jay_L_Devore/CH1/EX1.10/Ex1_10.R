#Ex1.10, Page 18
#Answers may vary since different class intervals have been taken

#Please install and load the following packages: 1)HistogramTools 2)ash 
library(HistogramTools)
library(ash)

data<-c(2.97,4.00,5.20,5.56,5.94,5.98,6.35,6.62,6.72,6.78,6.80,6.85,6.94,7.15,7.16,7.23,7.29,7.62,7.62,7.69,7.73,7.87,7.93,8.00,8.26,8.29,8.37,8.47,8.54,8.58,8.61,8.67,8.69,8.81,9.07,9.27,9.37,9.43,9.52,9.58,9.60,9.76,9.82,9.83,9.83,9.84,9.96,10.04,10.21,10.28,10.28,10.30,10.35,10.36,10.40,10.49,10.50,10.64,10.95,11.09,11.12,11.21,11.29,11.43,11.62,11.70,11.70,12.16,12.19,12.28,12.31,12.62,12.69,12.71,12.91,12.92,13.11,13.38,13.42,13.43,13.47,13.60,13.96,14.24,14.35,15.12,15.24,16.06,16.90,18.26)

#Class intervals can also be created using classIntervals() from ClassInt library:
#classIntervals(data,style="pretty",intervalClosure="left") which creates different intervals as compared to those of textbook

#To create class intervals
ci<-seq(1,19,2)

freq<-table(cut(data,ci,right=FALSE))
rel_freq<-freq/length(data)
print(cbind(freq,rel_freq))

#To display histogram
PlotRelativeFrequency(hist(data,breaks = ci,right=FALSE,plot=FALSE),xlab="BTUIN",main="Histogram of energy consumption data",ylim=c(0,0.30))
