# Confidence Interval to Estimate population mean : Population standard devition unknown and population normally distributed
# pop_mean +/- t*(sd/sqrt(n)) , df = n-1
a<- c(3,1,3,2,5,1,2,1,4,2,1,3,1,1)
n = 14
df = n-1
t =  3.012
sd = 1.29
sample_mean = 2.14

pop_mean_1 = sample_mean - (t*(sd/sqrt(n)))
pop_mean_1

pop_mean_2 = sample_mean + (t*(sd/sqrt(n)))
pop_mean_2
