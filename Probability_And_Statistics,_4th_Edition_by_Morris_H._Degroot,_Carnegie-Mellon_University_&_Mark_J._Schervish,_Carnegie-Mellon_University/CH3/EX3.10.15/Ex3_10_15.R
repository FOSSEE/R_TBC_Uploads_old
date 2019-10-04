# Chapter 3 - Random Variables and Distributions, Section - 3.10 (Markov Chains), Page No. - 199

# "diag" function can be used to create an identity matrix.
# For more description, type ?diag in the console.
# In order to flip matrix "Thermimage" package is needed.
# To install the package following command must be executed -

install.packages("Thermimage")

# In order to initialize the package the following command is executed -

library(Thermimage)

# For more description of the package, type ?Thermimage in the console.
# "flip.matrix" function can be used to flip a matrix left-right.
# For more description, type ?flip.matrix in the console.
# Let the Transition Matrix be represented by 'P'.

P<-flip.matrix(diag(2))

# Let the identity matrix be represented by 'I'.

I<-diag(2)

# "P-I" matrix.

print(P-I)
G<-P-I;
for(i in 1:nrow(G))
{
  G[i,ncol(G)]=1
}

# "G" matrix.

print(G)

# "solve" function can be used to find the inverse of a matrix.
# For more description, type ?solve in the console.
# Let the inverse matrix be represented by 'G_inverse'.

G_inverse=solve(G)

# "G inverse" matrix.

print(G_inverse)

# Let the stationary distribution be represented by 'v'.

v<-G_inverse[2,]

# "v" vector.

print(v)