#Page number--10.25
#Example number--10.17

n=16
r_i_m=c(seq(1,16,1))              				#Ranks in math
r_i_p=c(1,10,3,4,5,7,2,6,8,11,15,9,14,12,16,13)		#Ranks in physics
d = r_i_m-r_i_p
data.frame(r_i_m,r_i_p,d,d^2)

#Rank correlation coefficient
p=1-(6*sum(d^2))/(n*(n^2-1))
p

