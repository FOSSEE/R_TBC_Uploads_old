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

r1=0.08
r2=0.09
P1=100/(1+r1)^5
P1
P2=100/(1+r2)^5
P2
(P2-P1)/P1

P1=100/(1+r1)^20
P1
P2=100/(1+r2)^20
P2
(P2-P1)/P1

cf1<-c(0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 108)
cf2<-c(0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 104)
P1=mypvvar(cf1,0.08)
P1 = sum(P1)
P1
P2=mypvvar(cf1,0.09)
P2 = sum(P2)
P2
(P2-P1)/P1
P1=mypvvar(cf2,0.08)
P1 = sum(P1)
P1
P2=mypvvar(cf2,0.09)
P2 = sum(P2)
P2
(P2-P1)/P1