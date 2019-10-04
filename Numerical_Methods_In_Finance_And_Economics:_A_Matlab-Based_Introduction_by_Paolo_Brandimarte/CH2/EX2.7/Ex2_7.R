mypvvar <- function(cf,r) {
  # get number of periods
  n = length(cf)
  #1 get vector of discount factors
  df<-matrix(0,n)
  for (i in 0:n-1){
    df[i+1] = 1/(1+r)^(i)
  }
  #compute result
  pv = cf*df
}

cf<-c(0, 8, 8, 8, 8, 108)
pv = mypvvar (cf ,0.08)
sum(pv)

pv = mypvvar (cf ,0.09)
sum(pv)

pv = mypvvar (cf ,0.07)
sum(pv)