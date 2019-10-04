##Chapter 4 : Duality and Post-optimal Analysis
##Example 2-1 : Page 175

##Please note that the constraints are not given in the example(printing error) and 
##it has been deduced from simplex tableau

##We will be using glpkAPI library. If you are using Debian system, run the following command
##before running the R script ::  sudo apt-get install libglpk-dev
##For other linux and windows systems, install GLPK which is available at https://www.gnu.org/software/glpk/
##or from their respective repositories
library(glpkAPI)

# Objective function :Min 3 * x1 + 2 * x2 + 1 * x3
a <- c(3,2,1)

# Constraint 1 :   3 * x1 +  1 * x2 + x3 >= 3
# Standardizing constraint by multiplying by -1
C1 <- c(-3,-1,-1)
bc1<- -3

# Constraint 2 : -3 * x1 + 3 * x2 + x3 >= 6
# Standardizing constraint by multiplying by -1
C2 <- c(3,-3,-1)
bc2<--6

# Constraint 3 : x1 + x2 + x3 <= 3
C3 <- c(1,1,1)
bc3<-3

#upper bound vector
bc <- c(bc1,bc2,bc3)

#Constraint matrix
ConstraintMatrix <- rbind(a,C1,C2,C3)

#Initiating row and coloumn index variable as well as constraint coefficient value variable
rowindex <- numeric()
colindex <- numeric()
value <- numeric()

#initiate GLPK object and name
dualSimplex <- initProbGLPK()
setProbNameGLPK(dualSimplex, "Example 4-1")
setObjNameGLPK(dualSimplex, "Minimize using Dual Simplex")

#Setting objective direction and number of coloumns
setObjDirGLPK(dualSimplex, GLP_MIN)
addColsGLPK(dualSimplex, 3)

#setting decision variable names,bounds and coefficients
for (i in 1:3) {
  setColsNamesGLPK(dualSimplex,i,toString(c("x",i)))
  setColBndGLPK(dualSimplex, i, GLP_LO, 0.0, 0.0)
  setObjCoefsGLPK(dualSimplex, i, a[i])
}

#add 4 rows (including the objective)
addRowsGLPK(dualSimplex, 4)

#set row name as objective name itself
setRowsNamesGLPK(dualSimplex, 1, getObjNameGLPK(dualSimplex))

#set row names and bounds for constraint
for (i in 1:3){
  setRowsNamesGLPK(dualSimplex, i+1, toString(c("Constraint", i)))
  setRowBndGLPK(dualSimplex, i+1, GLP_UP, 0, bc[i])
}

#initiating row and coloumn index and the values
counter=1
for (i in 1:4) {
  for (j in 1:3) {
    rowindex[counter] <- i
    colindex[counter] <- j
    value[counter] <- ConstraintMatrix[i,j]
    counter=counter+1
  }
}

#change the soving algorithm to dual simplex
setSimplexParmGLPK(METH,GLP_DUAL)

#shows the current solver parameters
getSimplexParmGLPK()

#load and initiate all the data
loadMatrixGLPK(dualSimplex, 12, rowindex, colindex, value)

#Solve
solveSimplexGLPK(dualSimplex)

#Prints the status, optimal objective value and decisision variable value
getSolStatGLPK(dualSimplex)
getObjValGLPK(dualSimplex)
getColsPrimGLPK(dualSimplex)

#prints the summary of the optimization to your working directory
printSolGLPK(dualSimplex,'textfile.txt')

#deletes the glpk object
delProbGLPK(dualSimplex)