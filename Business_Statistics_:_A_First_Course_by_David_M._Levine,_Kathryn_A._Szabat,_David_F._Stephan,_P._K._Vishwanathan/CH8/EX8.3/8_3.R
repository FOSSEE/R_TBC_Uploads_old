# Confidence Interval to Estimate population mean : Population standard devition unknown and population normally distributed
# pop_mean +/- t*(sd/sqrt(n)) , df = n-1
a<- c(73,19,16,64,28,28,31,90,60,56,31,56,22,18,45,48,17,17,17,91,92,63,50,51,69,16,17)
sample_mean<- mean(a)
mean
sd<- sd(a)
  
n = 27
df = n-1
t =  2.0555



time_mean_up <- sample_mean - (t*(sd/sqrt(n)))
time_mean_up

time_mean_low <- sample_mean + (t*(sd/sqrt(n)))
time_mean_low
