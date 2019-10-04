##Chapter 16 : Queuing Systems
##Example 7-1 : Page 664

#arrival rate
lambda=4
#Expectation of arrival
EOfT=1/6
#variance of arrival
VarOfT=0
#Length of the system
Ls=lambda*EOfT+((lambda^2 *(EOfT^2 + VarOfT))/(2*(1-lambda*EOfT)))
#Length of the queue
Lq=Ls-lambda*EOfT
#Waiting time in the system
Ws=Ls/lambda
#Waiting time in the queue
Wq=Lq/lambda
Ls
Lq
Ws
Wq