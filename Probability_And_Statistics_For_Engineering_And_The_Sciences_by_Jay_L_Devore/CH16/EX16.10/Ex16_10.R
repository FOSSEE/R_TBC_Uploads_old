#Ex16.10, Page 680

sigma<-0.004
kbar<-0.74
delta<-0.003

n<-round((2*kbar*sigma/delta)^2,digits=0)
print(paste("Sample size:",n))

hbar<-3.2
h<-(sigma/sqrt(n))*hbar
print(paste("h value:",h))

print(paste("Out of control signal if d>",h,"or e>",h))