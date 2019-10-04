# t test for the difference in two sample means : 
# t = (sample_mean_1 - sample_mean_2)-(pop_mean_1 - pop_mean_2)/sqrt((sp^2/n1)+(sp^2/n2))
# pooled variance = ((n1-1)*S1+(n2-1)*S2)/((n1-1)+(n2-1))
local <- c(16.8,11.7,15.6,16.7,17.5,18.1,14.1,21.8,13.9,20.8)
chain <- c(22.0,15.2,18.7,15.6,20.8,19.5,17,19.5,16.5,24)
sample_mean_1 = mean(local)
sample_mean_2 = mean(chain)
pop_mean_1<- 0
pop_mean_2<- 0
sd1 <- sd(local)
sd2<- sd(chain)
s1 = var(local) #variance
s2 = var(chain) #variance
var.test(s1,s2)
n1 = 10
n2 = 10
lower_critical_value<- -1.7341
p_value<- 0.0598
sp <- ((n1-1)*s1+(n2-1)*s2)/((n1-1)+(n2-1)) #pooled variance


# t test :
t <- ((sample_mean_1 - sample_mean_2)-(pop_mean_1 - pop_mean_2))/sqrt((sp/n1)+(sp/n2))
#null hypothesis not rejected because t > p_value

