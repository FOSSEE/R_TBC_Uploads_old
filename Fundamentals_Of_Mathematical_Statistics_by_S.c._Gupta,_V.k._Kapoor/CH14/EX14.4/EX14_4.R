#Page number--14.13
#Example number--14.4

n=1000
X=540
p=X/n    			 # Sample proportion of rice eaters
#H0::Wheat and rice are equally popular
# Population proportion of rice eaters in Maharashtra
P=0.5
Q=1-P

Z=(p-P)/sqrt(P*Q/n)

#At 1% level of significance
if(Z<2.532)
sprintf("Hence, H0 hypothesis accepted")
sprintf("Rice and wheat are equally popular in Maharashtra State")
