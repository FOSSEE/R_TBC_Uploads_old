require(varbvs)
require(tictoc)
AssetPathsV <- function(S0,mu,sigma,T,NSteps,NRepl) {
  dt = T/NSteps
  nudt = (mu-0.5*sigma^2)*dt
  sidt = sigma*sqrt(dt)
  Increments = nudt + sidt*randn(NRepl, NSteps)
  LogPaths = apply(cbind(matrix(log(S0)*matrix(1,NRepl,1)),Increments),2,cumsum)
  SPaths = exp(LogPaths)
  SPaths[,1] = S0
  return(SPaths)
}
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
Paths = AssetPathsV(50,0.1,0.3,1,100,1000)

N = dim(Paths)[2]
for (i in 1:N){
  plot(Paths[,i],type = 'l')
}

tic()
AssetPaths(50,0.1,0.3,1,100,1000)
toc()

tic()
AssetPathsV(50,0.1,0.3,1,100,1000)
toc()