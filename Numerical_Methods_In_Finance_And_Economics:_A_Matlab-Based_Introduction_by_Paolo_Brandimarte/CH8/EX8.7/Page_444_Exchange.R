require(lmom)
Exchange <- function(V0,U0,sigmaV,sigmaU,rho,T,r) {
  sigmahat = sqrt(sigmaU^2 + sigmaV^2 - 2*rho*sigmaU*sigmaV)
  d1 = (log(V0/U0) + 0.5*T*sigmahat^2)/(sigmahat*sqrt(T))
  d2 = d1 - sigmahat*sqrt(T)
  p = V0*cdfnor(d1) - U0*cdfnor(d2)
  return(p)
}

VO = 50
UO = 60
sigmaV = 0.3
sigmaU = 0.4
rho = 0.7
T = 5/12
r = 0.05
Exchange(VO ,UO, sigmaV, sigmaU, rho, T ,r)