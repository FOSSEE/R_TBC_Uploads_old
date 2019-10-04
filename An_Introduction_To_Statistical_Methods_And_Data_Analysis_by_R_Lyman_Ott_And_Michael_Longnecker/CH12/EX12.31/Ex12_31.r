 ## prediction equation is
 #y=25.0+1.5*x1+0.8*x2
Y <- matrix(c(25,19,33,23),4,1)
X <- matrix(c(1,1,1,1,-2,-2,2,2,5,-5,5,-5),4,3)
transpose_X=t(X)
transpose_X_X=transpose_X%*%X
inverse_transpose_X_X=solve(transpose_X_X)
inverse_transpose_X_X
# for  estimated standard error use inverse_trasnpose_X_X matrix
s_beta0=2*sqrt(0.25)
s_beta0
s_beta1=2*sqrt(0.0625)
s_beta2=2*sqrt(0.01)
s_beta1
s_beta2
