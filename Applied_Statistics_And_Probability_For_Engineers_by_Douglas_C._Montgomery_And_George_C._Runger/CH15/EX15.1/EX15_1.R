#Vane Opening(Pg no. 677)

xbar = c(31.6,33.4,35.0,32.2,33.8,38.4,31.6,36.8,35.0,34.0,29.8,34.0,33.0,34.8,35.6,30.8,33.0,31.6,28.2,33.8)
r = c(4,6,4,4,2,3,4,10,15,6,4,4,10,4,7,6,5,3,9,6)

Xbar = sum(xbar)/20
rbar = sum(r)/20
n = 5
A2 = 0.577
UCL = Xbar + A2*rbar
LCL = Xbar - A2*rbar
cat("the trial control limits for the Xbar chart are UCl = ",round(UCL,digits = 2),"LCl = ",round(LCL,digits = 2))

D4 = 2.115
D3 = 0

cat("the trial control limits for the rbar chart are UCl = ",round(D4*rbar, digits = 2),"LCl = ",(D3*rbar))

s = c(1.67332,2.60768,1.58114,1.64317,0.83666,1.14018,1.51658,4.38178,5.43139,2.54951,1.78885,1.73205,3.80789,1.78885,2.60768,2.48998,2.0,1.51658,3.42053,2.38747)
sbar = sum(s)/20
c4 = 0.94

lim = ((3*sbar)/c4)*sqrt(1-(c4^2))

cat("the trial control limits for the sbar chart are UCl = ",(sbar+lim),"LCl = ",(sbar-lim))

lim4 = Xbar + (3*sbar)/(c4*sqrt(n))
lim3 = Xbar - (3*sbar)/(c4*sqrt(n))

cat("If sbar is used to determine the control limits for the Xbar chart then limits are(",lim3,",",lim4,")")

Xbar = 33.21
rbar = 5.0
UCL = Xbar + A2*rbar
LCL = Xbar - A2*rbar
cat("new revised limits for the Xbar chart are UCl = ",round(UCL, digits = 2),"LCl = ",round(LCL, digits = 2))