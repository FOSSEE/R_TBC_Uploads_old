#Note P_Xi denotes P(X=i), E_XgYi denotes E[X|Y = i]

Pi = function(i){
  if(i>7){
    i = 14 - i
  }
  ans = (i-1)/36
}

P_Si = function(c){
  if(i == 7 || i == 11){
    return(Pi(i))
  }
  if( i == 2 || i == 3 || i == 12){
    return(0)
  }
  else{
    ans = Pi(i)^2 / (Pi(i) + Pi(7))
  }
}

p = 0
for(i in 2:12){
  p = p + P_Si(i)
}

print(p)