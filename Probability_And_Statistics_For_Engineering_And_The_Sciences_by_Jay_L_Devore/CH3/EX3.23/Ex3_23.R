#Ex3.23, Page 110

comp<-c(0,0.1,1,0.2,2,0.3,3,0.4)
row.names<-c("X","p(X)")
column.names<-c("","","","")
matrix.names<-c("X->Number of computers sold")
p<-array(c(comp),dim=c(2,4,1),dimnames=list(row.names,column.names,matrix.names))
print(p)

x<-0:3
w<-c(0.1,0.2,0.3,0.4)
#h(x)<-profit associated with selling x units<-revenue-cost<-800x-900
print(paste("Expected profit:$",weighted.mean(800*x-900,w)))

