#Note P_Xi denotes P(X=i), E_XgYi denotes E[X|Y = i]

p = 0.493
E_R = 3.376

E_RgSi = function(i){
  if(i == 2 || i == 3 || i == 7 || i == 11 || i == 12){
    return(1)
  }
  else{
    ans = 1 + 1/(Pi(i)+Pi(7))
    return(ans)
  }
}

Pi = function(i){
  if(i>7){
    i = 14 - i
  }
  ans = (i-1)/36
}

Qi = function(i){
  if( i == 2 || i == 3 || i == 12){
    return(0)
  }
  if( i == 7 || i == 11){
    return(Pi(i)/p)
  }
  else{
    ans = Pi(i)^2 / (p * (Pi(i) + Pi(7)))
    return(ans)
  }
}

E_Rgwin = 0

for(i in 2:12){
  E_Rgwin = E_Rgwin + E_RgSi(i)*Qi(i)
}

E_Rglose = (E_R - E_Rgwin*p)/ (1-p)

print(E_Rglose)
