#Ex9.11, Page 376
#Answers may slightly vary due to rounding off of values

alpha<-0.05

#H0: p1-p2=0
#Ha: p1-p2<0

a<-81
tot1<-549
p1cap<-a/tot1
q1cap<-1-p1cap

b<-141
tot2<-730
p2cap<-b/tot2
q2cap<-1-p2cap

pcap<-(a+b)/(tot1+tot2)
qcap<-1-pcap

#To find test statistic value
if((tot1*p1cap)>=10 && (tot1*q1cap)>=10 && (tot2*p2cap)>=10 && (tot2*q2cap)>=10) 
  z<-(p1cap-p2cap)/sqrt(pcap*qcap*(1/tot1+1/tot2))
print(paste("Test statistic value:",z))

#To find P-value
p<-pnorm(z)
print(paste("P-value:",p))

if(p<=alpha)  print(paste("H0 can be rejected at significance level",alpha)) else  print(paste("H0 cannot be rejected"))

