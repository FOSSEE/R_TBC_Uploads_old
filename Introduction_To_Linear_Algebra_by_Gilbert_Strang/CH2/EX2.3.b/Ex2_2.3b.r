#Example : 2.3b    Chapter : 2.3   Pageno  : 61
#Multiplication with Elimination and Permutation matricies
Ab<-matrix(c(1,4,0,2,8,3,2,9,2,1,3,1),ncol=4)
E21<-matrix(c(1,0,0,-4,1,0,0,0,1),ncol=3,byrow=T)
P32<-matrix(c(1,0,0,0,0,1,0,1,0),ncol=3,byrow=T)
E21Ab<-E21%*%Ab
print(E21Ab)
P32E21Ab<-P32%*%E21Ab
print(P32E21Ab)
P32E21<-P32%*%E21
print(P32E21)
P32E21Ab<-P32E21%*%Ab
print(P32E21Ab)
#Solution for this system is
b<-P32E21Ab[,4]
P32E21Ab<-P32E21Ab[,-4]
x<-solve(P32E21Ab,b)
print(x)