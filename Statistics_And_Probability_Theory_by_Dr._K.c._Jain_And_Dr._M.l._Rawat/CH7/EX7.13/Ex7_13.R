#Example 13 chapter 7 page no 319
l1=14    #avg arrival rate for withdrawers
u1=20    #avg service rate for withdrawers
rho=l1/u1
Ew = l1/(u1*(u1-l1))
cat("avg waiting time in the queue in minutes",Ew*60)
l2=16
Ew = l2/(u1*(u1-l2))
cat("avg waiting time in the queue for depositers in minutes",Ew*60)
l=l1+l2
c=2
P0=1/(1+  l/u1  + (((l/u1)^2)/2)*c*u1/(c*u1-l) )
print(P0)
EW=u1*((l/u1)^c)*P0/((c*u1-l)^2)
cat("avg waiting time in the queue in minutes for a withdrawer+depositer",EW*60)
u2=120/7
P0=1/(1+  l/u2  + (((l/u2)^2)/2)*c*u2/(c*u2-l) )
print(P0)
EW=u2*((l/u2)^c)*P0/((c*u2-l)^2)
cat("avg waiting time in the queue in minutes for a withdrawer+depositer",EW*60)
