# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 194

# "vector" function is used in order to create a vector.
# For more description, type ?vector in the console.
# Let all probabilities be stored initailly in a vactor 'p'.

p<-c(0.1,0.4,0.2,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.2,0.3,0.2,0.1,0.1,0.1,0.1,0.4,0.2)

# "matrix" function is used in order to create a vector.
# For more description, type ?matrix in the console.
# Let the Transition Matrix be represented by 'P'.

P<-matrix(p,nrow=6,ncol=6,byrow=TRUE)
print(P)

# Let two step transition matrix be represented by 'P_2'.
# Operator used for matrix multiplication is "%*%".

P_2=P%*%P;
print(P_2)

# (a) Required probability is given as follows -

print(P_2[4,2])

# (b) Required probability is given as follows -

print(P_2[3,2])

# Let three step transition matrix be represented by 'P_3'.

P_3=P_2%*%P;
print(P_3)

# (a) Required probability is given as follows -

print(P_3[5,1])

# (b) Required probability is given as follows -

print(P_3[2,2])