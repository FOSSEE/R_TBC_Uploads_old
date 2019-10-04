#PAGE NUMBER--2.29
#Example number--2.21

m_m_t=c(0,10,20,30,40,50) 			# marks more than
n_o_c=c(500,460,400,200,100,30)		# number of candidates
Class_interval=c("0-10","10-20","20-30","30-40","40-50","50 Above")
f=c(500-460,460-400,400-200,200-100,100-30,30)
cf=cumsum(f)
data.frame(m_m_t,n_o_c,Class_interval,f,cf)

sum(f)/4
sprintf("Cumulative frequence just greater than 125 is 300")
sprintf("So, the corresponding class is 20-30")
Q1= 20 + 10/200*(125-100)
Q1

3*sum(f)/10
sprintf("Cumulative frequence just greater than 150 is 300")
sprintf("So, the corresponding class is 20-30")
D3= 20 + 10/200*(150-100)
D3







