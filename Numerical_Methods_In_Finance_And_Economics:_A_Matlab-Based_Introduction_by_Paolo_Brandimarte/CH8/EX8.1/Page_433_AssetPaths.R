AssetPaths <- function(S0,mu,sigma,T,NSteps,NRepl) {
  SPaths = matrix(0,NRepl, 1+NSteps)
  SPaths[,1] = S0
  dt = T/NSteps
  nudt = (mu-0.5*sigma^2)*dt
  sidt = sigma*sqrt(dt)
  for (i in 1:NRepl){
    for (j in 1:NSteps){
      SPaths[i,j+1]=SPaths[i,j]*exp(nudt + sidt*rnorm(1))
    }
  }
  return(SPaths)
}
set.seed(37456)
paths=AssetPaths(50,0.1,0.3,1,365,3)
plot(1:length(paths[3,]) ,paths[3,],type = 'l')
lines(1:length(paths[1,]) ,paths[1,],type = 'l')
lines(1:length(paths[2,]) ,paths[2,],type = 'l')