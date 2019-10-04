#Ex3.15, Page 104
a<-c(0,0.58,1,0.72,2,0.76,3,0.81,4,0.88,5,0.94)
row.names<-c("X","F(X)")
column.names<-c("","","","","","")
matrix.names<-c("Number of days of sick leave taken by a randomly selected employee")
b<-array(c(a),dim=c(2,6,1),dimnames=list(row.names,column.names,matrix.names))
print(b)

#P(2<=X<=5)=P(X=2,3,4,5)
p<-b[2,6,1]-b[2,2,1]
print(paste("P(2<=X<=5)=",p))

#P(X=3)
q<-b[2,4,1]-b[2,3,1]
print(paste("P(X=3)=",q))
      