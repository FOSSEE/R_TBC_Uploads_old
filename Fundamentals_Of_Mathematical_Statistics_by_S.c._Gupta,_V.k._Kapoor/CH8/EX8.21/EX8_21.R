#Page number--8.19
#Example number--8.21

n=5
N=4096
#Probability of success throw 4,5,6
p=1/2
q=1-p
#Probability distribution
#P=choose(12,x)*(1/2)^x*(1/2)^(12-x)
#f(x)=choose(12,x)
success=c(0,1,2,3,4,5,6,7,8,9,10,11,12)
Expected_Frequency=c()
for(i in success){
	Expected_Frequency[i+1]=choose(12,i)
}
data.frame(success,Expected_Frequency)
Total=sum(Expected_Frequency)
Total