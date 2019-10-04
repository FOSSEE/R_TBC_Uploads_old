#PAGE NUMBER--2.16
#Example number--2.7

Wages=c("2000-3000","3000-4000","4000-5000","5000-6000","6000-7000")
n_o_e=c(3,5,20,10,5)     		# Number of employees
cf=cumsum(n_o_e)
data.frame(Wages,n_o_e,cf)

sum(n_o_e)/2
sprintf("Cumulative frequence just greater than 21.5 is 28")
sprintf("So, the median class is 4000-5000")

median= 4000 + 1000/20*(21.5-8)
median

