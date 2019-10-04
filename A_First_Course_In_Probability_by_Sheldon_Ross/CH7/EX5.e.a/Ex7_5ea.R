#Note P_Xi denotes P(X=i), E_XgYi denotes E[X|Y = i]

Pi = function(i){
  if(i>7){
    i = 14 - i
  }
  ans = (i-1)/36
}

E_RgSi = function(i){
  if(i == 2 || i == 3 || i == 7 || i == 11 || i == 12){
    return(1)
  }
  else{
    ans = 1 + 1/(Pi(i)+Pi(7))
    return(ans)
  }
}

E_R = 0

for(i in 2:12){
  E_R = E_R + E_RgSi(i) * Pi(i)
}

print(E_R)

