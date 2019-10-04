time<-c(.021,.107,.179,.190,.196,.283,.580,.854,1.18,2.00,7.30)
boxplot(time, horizontal = TRUE,ylim=c(0,8),xlab='Time(s)')
quantile=quantile(time,probs = c(0,0.25,.5,.75,1))
#minimum
min=quantile[1]
min
#maimum
max=quantile[5]
max
#Q1
Q1=0.179
Q1
#Q3
Q3=1.18
Q3
#interquartile range is
inter=Q3-Q1
inter
