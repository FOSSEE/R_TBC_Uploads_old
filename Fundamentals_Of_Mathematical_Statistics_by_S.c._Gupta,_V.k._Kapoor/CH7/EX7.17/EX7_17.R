#Page number--7.17
#Example number--7.33

x=c(-1,0,1)
px=c(1/8,6/8,1/8)
data.frame(x,px)
EX=sum(x*px)
EX			  		#Mean
EX2=sum(abs(x*px))
EX2
VarX=EX2-(EX)^2
VarX				      #Variance
s.d=sqrt(VarX)  			#Standard Deviation
s.d
P=1-px[2]
P
px[2]