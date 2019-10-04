#Example 3.8, Page 97
#The answers may slightly vary due to rounding off of values
p1<-c(1,0,2,2,3,0,4,1,5,2,6,0)
row.names<-c("Lot","Number of defectives")
column.names<-c("","","","","","")
matrix.names<-c("Number of defectives in each lot")
p<-array(c(p1),dim=c(2,6,1),dimnames=list(row.names,column.names,matrix.names))
print(p)
#p(0)=P(X=0)
c<-0
for(i in 1:6) {
  d<-p[2,i,1]
  if(d==0){
    c<-c+1
  }
}
d<-c/6
print(paste("p(0)=",d))

#p(1)=P(X=1)
c<-0
for(i in 1:6){
    d<-p[2,i,1]
    if(d==1){
      c<-c+1
  }
}
d<-c/6
print(paste("p(1)=",d))

#p(2)=P(X=2)
c<-0
for(i in 1:6){
    d<-p[2,i,1]
    if(d==2){
      c<-c+1
  }
}
d<-c/6
print(paste("p(2)=",d))

