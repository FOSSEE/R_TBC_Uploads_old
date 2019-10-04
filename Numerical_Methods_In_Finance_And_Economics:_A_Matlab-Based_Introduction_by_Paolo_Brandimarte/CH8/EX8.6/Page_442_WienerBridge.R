WienerBridge <- function(T, NSteps) {
  NBisections = log2(NSteps)
  if (round(NBisections) != NBisections){
    cat('ERROR in WienerBridge: NSteps must be a power of 2','\n')
    return
  }
  WSamples = matrix(0,NSteps+1,1)
  WSamples[1] = 0
  WSamples[NSteps+1] = sqrt(T)*rnorm(1)
  TJump = T
  IJump = NSteps
  for (k in 1:NBisections){
    left = 1
    i = IJump/2 + 1
    right = IJump + 1
    for (j in 1:(2^(k-1))){
      a = 0.5*(WSamples[left] + WSamples[right])
      b = 0.5*sqrt(TJump)
      WSamples[i] = a + b*rnorm(1)
      right = right + IJump
      left = left + IJump
      i = i + IJump
    }
    IJump = IJump/2
    TJump = TJump/2
  }
  return(WSamples)
}


# CheckBridge.m
set.seed(3826)
NRepl = 100000
T = 1
NSteps = 4
WSamples = matrix(0,NRepl, 1+NSteps)
for (i in 1:NRepl){
  WSamples[i,] =WienerBridge(T, NSteps)
}
a <- function(X) {
  mean(X)
}
b <- function(X) {
  sqrt(var(X))
}
m = matrix()
sdev = matrix()
for (z in 2:(1+NSteps)){
  m[z-1] = a(WSamples[,z])
  sdev[z-1] = b(WSamples[,z])
}
m
sdev
sqrt((1:NSteps)*T/NSteps)