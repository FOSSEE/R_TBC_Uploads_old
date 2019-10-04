#Ex3.13, Page 101

y<-c(1,2,4,8,16)
p<-c(0.05,0.1,0.35,0.4,0.1)

#F(1)=P(Y<=1)=p(1)
print(paste("F(1)=",cumsum(p[1])))

#F(2)=P(Y<=2)=p(2)
print(paste("F(2)=",max(cumsum(p[1:2]))))

#F(4)=P(Y<=4)=p(4)
print(paste("F(4)=",max(cumsum(p[1:3]))))

#F(8)=P(Y<=8)=p(8)
print(paste("F(8)=",max(cumsum(p[1:4]))))

#F(16)=P(X<=16)=p(16)
print(paste("F(16)=",max(cumsum(p[1:5]))))







