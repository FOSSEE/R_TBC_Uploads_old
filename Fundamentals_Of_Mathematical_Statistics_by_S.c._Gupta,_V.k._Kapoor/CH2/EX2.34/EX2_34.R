#PAGE NUMBER--2.44
#Example number--2.34

# Part(i)
# Firm A:
n1=500				 # Number of wagers
x1=186				 # Average daily wage
t_w_p1=n1*x1  			 # Total wages paid
t_w_p1

# Firm B:
n2=600				 # Number of wagers
x2=175				 # Average daily wage
t_w_p2=n2*x2			 # Total wages paid
t_w_p2

sprintf("Firm B has larger wage bill")

# Part(ii)
s.d1=sqrt(81)    			# Standard Deviation of A
s.d2=sqrt(100)			# Standard Deviation of B
c.vA=100*s.d1/x1
c.vA
c.vB=100*s.d2/x2
c.vB

sprintf("Firm B has greater variability in individual wages")

# Part(iii)
a_d_w= (n1*x1 + n2*x2)/(n1 + n2)  		# Average daily wages
a_d_w
d1=x1-a_d_w
d2=x2-a_d_w
c.v= 1/(n1 + n2) * (n1*(81+d1^2) + n2*(100+d2^2))
c.v










