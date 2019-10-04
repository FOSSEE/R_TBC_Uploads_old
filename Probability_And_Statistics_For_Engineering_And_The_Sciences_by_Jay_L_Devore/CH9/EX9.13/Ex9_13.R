#Ex9.13, Page 380
#Answers may vary slightly due to rounding off of values

alpha<-0.01
a<-76        #number of people who survived through chemotherapy treatment
m<-154    #number of people who received chemotherapy treatment
p1cap<-a/m
q1cap<-1-p1cap
print(paste("p1cap:",p1cap))

b<-98        #number of people who survived through hybrid treatment
n<-164    #number of people who received hybrid treatment
p2cap<-b/n
q2cap<-1-p2cap
print(paste("p2cap:",p2cap))

#To find z
zalpha<-qnorm(1-alpha/2)

if(m*p1cap>=10 && m*q1cap>=10 && n*p2cap>=10 && n*q2cap>=10)  
  l<-p1cap-p2cap-zalpha*sqrt((p1cap*q1cap/m)+(p2cap*q2cap/n))
  r<-p1cap-p2cap+zalpha*sqrt((p1cap*q1cap/m)+(p2cap*q2cap/n))

print(paste("Left endpoint of confidence interval:",l))
print(paste("Right endpoint of confidence interval:",r))
print(paste("Hence",round(l,digits=3),"<p1-p2<",round(r,digits=3)))