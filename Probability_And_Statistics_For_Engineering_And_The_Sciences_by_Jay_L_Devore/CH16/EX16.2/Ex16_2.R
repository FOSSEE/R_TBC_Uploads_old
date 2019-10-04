#Ex16.2, Page 657
#Answers may vary slightly due to rounding off of values

n<-3
k<-25
xdoublebar<-261.896/k
sbar<-3.834/k
a3<-0.886

#To find control limits
LCL<-xdoublebar-n*sbar/(a3*sqrt(n))
UCL<-xdoublebar+n*sbar/(a3*sqrt(n))
print(paste("LCL:",LCL))
print(paste("UCL:",UCL))

#Old limits:
#mu=10.5, sigma=0.18

#New limits:
print(paste("mu_cap:",xdoublebar))
print(paste("sigma_cap:",sbar/a3))
