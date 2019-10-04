##Chapter 3 : The Simplex Method and Sensitivity Analysis
##Example 4-2 : Page 105

# Objective function :Min 4 * x1 + x2
a <- c(4,1)

# Constraint 1 : 3*x1 + x2 = 3
C1 <- c(3,1)
bc1<- 3

# Constraint 2 : 4*x1 + 3*x2 >= 6
C2 <- c(4,3)
bc2<-6

# Constraint 3 : x1 + 2*x2 <=4
C3 <- c(1,2)
bc3<-4

library("boot")

simplex(a,C3,bc3,C2,bc2, C1,bc1 ,maxi = F)

#The method employed by this function is the two phase tableau simplex method. 
#If there are >= or equality constraints an initial feasible solution is not 
#easy to find. To find a feasible solution an artificial variable is introduced 
#into each >= or equality constraint and an auxiliary objective function is defined 
#as the sum of these artificial variables. If a feasible solution to the set of 
#constraints exists then the auxiliary objective will be minimized when all of the 
#artificial variables are 0. These are then discarded and the original problem solved 
#starting at the solution to the auxiliary problem. If the only constraints are of the 
#<= form, the origin is a feasible solution and so the first stage can be omitted.
##Refrence : https://stat.ethz.ch/R-manual/R-devel/library/boot/html/simplex.html