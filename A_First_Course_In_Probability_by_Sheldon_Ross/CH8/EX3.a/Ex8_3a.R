P = function(n){
  acc = 0.5
  ans = pnorm(0.5*sqrt(n)/2, 0, 1) - pnorm(-0.5*sqrt(n)/2, 0, 1) 
  return(ans)
}

i = 1
while(P(i) < 0.95){
  i = i+1
}

print(i)