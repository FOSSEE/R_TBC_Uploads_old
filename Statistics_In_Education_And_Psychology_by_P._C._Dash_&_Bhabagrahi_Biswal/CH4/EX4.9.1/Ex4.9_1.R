# Page.No 4.11

x<-seq(9.5,34.5,5) # class interval
f<-c(0,5,4,6,3,2)  # frequency
cf<-cumsum(f)   # cumulative frequency
percent<-cf/sum(f)*100
plot(x,percent,type = "o",main="OGIVE",xlim = c(9.5,50),ylim=c(0,100),xlab = "Upper limits",ylab = "Cumulative Percentage Frequency")
