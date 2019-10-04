 # mean for interval data
ClassInterval <- c("16.25-18.75", "18.75-21.25", "21.25-23.75","23.75-26.25", "26.25-28.75", " 28.75-31.25", " 31.25-33.75", "33.75-36.25","36.25-38.75", " 38.75- 41.25","41.25- 43.75")
freq <- c( 2,7,7,14,17,24,11,11,3,3,1)
mid_interval<- c(17.5,20.0,22.5,25.0,27.5,30.0,32.5,35.0,37.5,40.0,42.5)
fmi<-freq*mid_interval
 
List<- data.frame(ClassInterval, freq, mid_interval,fmi)
print(List)
print("mean is")
print(sum(fmi)/sum(freq))

 

