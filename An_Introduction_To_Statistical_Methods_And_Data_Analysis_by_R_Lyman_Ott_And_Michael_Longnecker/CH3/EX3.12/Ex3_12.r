y<-c(26 ,28 ,30, 37 ,33 ,30,
    29 ,39 ,49 ,31, 38 ,36,
    33 ,24, 34, 40 ,29, 41,
    40, 29, 35 ,44 ,32, 45,
    35 ,26, 42, 36 ,37 ,35)
mean_y<-sum(y)/length(y)
print(mean_y)
sample_variance <-(sum((y-mean_y)^2/(length(y)-1)))
print(sample_variance)
standard_deviation <-sqrt(sum((y-mean_y)^2/(length(y)-1)))
print(standard_deviation)
# we obtain an approximate value for s by dividing the range by 4:
s=(max(y)-min(y))/4;
print(s)
