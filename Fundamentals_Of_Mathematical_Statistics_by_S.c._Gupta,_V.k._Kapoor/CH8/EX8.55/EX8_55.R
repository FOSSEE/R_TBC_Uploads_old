#Page number--8.46
#Example number--8.55

n_m_p=c(0,1,2,3,4)   		#Number of mistakes per page
n_o_p=c(109,65,22,3,1)  	#Number of pages
data.frame(n_m_p,n_o_p)

#Poission distribution parameter
lambda=sum(n_m_p*n_o_p)/200
lambda
Expected_Frequency=c()
a=c()
for(i in n_m_p){
	a[i+1]=dpois(i,lambda)
}
for(i in n_m_p){
	Expected_Frequency[i+1]=200*a[i+1]
}
data.frame(n_m_p,Expected_Frequency,round(Expected_Frequency))