#install.packages("MASS")
require(MASS)
#P_X denotes P(X),  P_XgC denotes P(X|C),  P_Xc denotes P(X) complement

P_En <- function(n){
  ans = ((13/18)^(n-1))*1/9
  return(ans)
}
ans = 0
ix = P_En(1)
i = 2
while(ix != 0){
  ans = ans + ix
  ix = P_En(i)
  i = i+1
}

print(fractions(ans))