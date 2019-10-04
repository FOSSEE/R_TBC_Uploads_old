#Ex3.29, Page 115
#Number of licensed restaurants
n<-50
#Number of restaurants having at least one serious health code violation
f<-15
#Number of restaurants having no serious health code violations
s<-35
#P(s on first trial)
p1<-s/n;
print(paste("P(s on first trial)=",p1))

#P(s on second trial)=P(ss)+P(fs)
p2<-(s/n)*((s-1)/(n-1))+(f/n)*(s/(n-1))
print(paste("P(s on second trial)=",p2))
print(paste("Similarly, P(s on ith trial) = 0.7    for i=3,4,5"))

#P(s on fifth trial|ssss)
p3<-(s-4)/(n-4)
print(paste("P(s on fifth trial|ssss)=",p3))

#P(s on fifth trial|ffff)
p4<-s/(n-4)
print(paste("P(s on fifth trial|ffff)=",p4))


