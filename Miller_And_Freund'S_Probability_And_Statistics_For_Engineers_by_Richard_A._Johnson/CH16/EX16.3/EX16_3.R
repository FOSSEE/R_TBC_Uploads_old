n=50#Suppose that 50 units are placed on life test (without replacement)
r=10#failure
Time=c(65, 110, 380, 420, 505, 580, 650, 840, 910,950)#Failure Time in Hourse
#Accumulated life to r failures
T10=sum(Time)+(n-r)*950
#mean life of the component as
mu=T10/r
#failure rate is
alpha=1/mu#failure per hour
Chi0.05=qchisq(1-0.05,20)
Chi0.95=qchisq(1-0.95,20)
#confidence interval for mean life is
Int1=(2*T10)/Chi0.05
Int2=(2*T10)/Chi0.95
cat("The mean life interval is : ",Int1," < ",Int2)