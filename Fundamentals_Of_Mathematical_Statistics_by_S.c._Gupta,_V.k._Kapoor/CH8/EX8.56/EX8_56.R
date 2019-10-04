#Page number--8.46
#Example number--8.56

lambda=2/5
n_o_e=c(0,1,2,3,4)      	#Number of errors
prob=c()
for(i in n_o_e){
	prob[i+1]=dpois(i,lambda)
}
Expected_Frequency=c()
for(i in n_o_e){
	Expected_Frequency[i+1]=1000*prob[i+1]
}
data.frame(n_o_e,prob,Expected_Frequency,round(Expected_Frequency))


