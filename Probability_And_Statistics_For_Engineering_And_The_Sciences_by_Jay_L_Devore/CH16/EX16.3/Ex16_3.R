#Ex16.3, Page 658

n<-3
k<-25
xdoublebar<-261.896/k
rbar<-0.292
b3<-1.693
sigma_cap<-0.292/b3

#To find control limits
LCL<-xdoublebar-3*rbar/(b3*sqrt(n))
UCL<-xdoublebar+3*rbar/(b3*sqrt(n))
print(paste("LCL:",round(LCL,digits=3)))
print(paste("UCL:",round(UCL,digits=3)))
