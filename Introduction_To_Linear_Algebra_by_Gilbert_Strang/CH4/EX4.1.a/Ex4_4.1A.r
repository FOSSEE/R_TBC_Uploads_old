# Example : 4.1A   Chapter : 4.1     Page No: 201
# Dimensions of the subspaces in the given space
dim_R<-9
dim_S<-6
print("Possible dimensions of the subspaces orthogonal to S")
x<-dim_R-dim_S
orthogonal_dimensions<-c(0:x)
print(orthogonal_dimensions)
print(paste("possible dimensions of orthogonal complement subspaces to S",dim_R-dim_S))
print(paste("The smallest matrix A in S is ",dim_S," by ",dim_R))
print(paste("The Null space matrix N is ",dim_R," by ",dim_R-dim_S))
