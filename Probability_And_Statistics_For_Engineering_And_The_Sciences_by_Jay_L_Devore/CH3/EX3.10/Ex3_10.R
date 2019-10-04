#Ex3.10, Page 98
#Let Y=>O+ blood type and N=>Other blood types
p1<-c('a','Y','b','Y','c','N','d','N','e','N')
row.names<-c("Blood donors","O+ blood donors")
column.names<-c("","","","","")
matrix.names<-c("Blood donation table")
p<-array(c(p1),dim=c(2,5,1),dimnames=list(row.names,column.names,matrix.names))
print(p)
#p(1)=P(X=1)
c<-0
for(i in 1:5) {
  d<-p[2,i,1]
  if(d=="Y"){
    c<-c+1
  }
}
d1<-c/5
print(paste("p(1)=",d1))

#p(2)=P(X=2)
g<-0
e<-0
for(i in 1:5) {
  h<-p[2,i,1]
  if(h=="Y"){
    g<-g+1
  }
  else{
    e<-e+1
  }
}
h<-g/5
f<-e/4
d2<-h*f
print(paste("p(2)=",d2))

#p(3)=P(X=3)
d3<-(e/5)*((e-1)/4)*(c/3)
print(paste("p(3)=",d3))

#p(4)=P(X=4)
d4<-(e/5)*((e-1)/4)*((e-2)/3)
print(paste("p(4)=",d4))

p2<-c(1,d1,2,d2,3,d3,4,d4)
row.names<-c("y","p(y)")
column.names<-c("","","","")
matrix.names<-c("PMF")
q<-array(c(p2),dim=c(2,4,1),dimnames=list(row.names,column.names,matrix.names))
print(q)

py<- 1:4
y<- c(0.4,0.3,0.2,0.1)
plot(py,y,type="h",main="Line graph for pmf",xlab="y",ylab="p(y)")

