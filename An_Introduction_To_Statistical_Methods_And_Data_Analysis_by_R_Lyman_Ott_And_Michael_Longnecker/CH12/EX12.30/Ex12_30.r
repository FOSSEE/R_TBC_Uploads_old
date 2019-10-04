Y <- matrix(c(25,19,33,23),4,1)
X <- matrix(c(1,1,1,1,-2,-2,2,2,5,-5,5,-5),4,3)
transpose_X=t(X)
transpose_Y=t(Y)
transpose_X_X=transpose_X%*%X
transpose_X_Y=transpose_X%*%Y
inverse_transpose_X_X=solve(transpose_X_X)

beta=inverse_transpose_X_X%*%transpose_X_Y
transpose_Y_Y=transpose_Y%*%Y
SSresidual=transpose_Y_Y-t(beta)%*%transpose_X_Y
SSregression=t(beta)%*%transpose_X_Y-(sum(Y)^2/4)
SSregression
SStotal=SSregression+SSresidual
SStotal