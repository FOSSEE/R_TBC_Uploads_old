#Page number--8.54
#Example number--8.63

n_o_c=c(0,1,2,3,4,5)    		#Number of cells
f=c(213,128,37,18,3,1)			#frequency
Mean=sum(n_o_c*f)/400
u2=sum(f*n_o_c^2)/400
u2
Var=u2-Mean^2
p=0.6825/0.8117
q=1-p
r=round(p*0.6825/q)
a=c(p^4,0.5738*0.5,2.5*0.1592*0.2869,2*0.1592*0.1142,7/4*0.1592*0.0364,8/5*0.1592*0.0101)
Expected_Frequency=c()
for(i in n_o_c){
	Expected_Frequency[i+1]=400*a[i+1]
}
round(Expected_Frequency)

