##Chapter 7 : Advanced Linear Programming
##Example 4-1 : Page 322
# Objective function
w <- c(3,5,0,0)

#Constraints
C<-rbind(c(1,2,1,0),c(-1,3,0,1))
b<-rbind(5,2)

B<-C[,c(1,4)]
Binv<-solve(B)

#Associated primal and dual variables are assocprimal and assocdual
assocprimal<-Binv%*%b
assocdual<-w[c(1,4)]%*%Binv

##the objective values are
primalobj<-c(3,0)%*%assocprimal
dualobj<-assocdual%*%c(5,0)

primalobj
dualobj