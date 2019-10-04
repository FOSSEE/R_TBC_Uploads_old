#Page number--8.47
#Example number--8.57

n_o_d=c(0,1,2,3,4,5,6,7,8)        		#Number of doddens
o_f=c(56,156,132,92,37,22,4,0,1)		#Observed frequency
data.frame(n_o_d,o_f)
Mean=sum(n_o_d*o_f)/500
lambda=Mean
a=c()
for(i in n_o_d){
	a[i+1]=lambda/(i+1)
}
prob=c()
for(i in n_o_d){
	prob[i+1]=dpois(i,lambda)
}
Expected_Frequency=c()
for(i in n_o_d){
	Expected_Frequency[i+1]=500*prob[i+1]
}
data.frame(n_o_d,a,prob,Expected_Frequency,round(Expected_Frequency))