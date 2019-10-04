#P_Lx denotes P(Lsub(x))
P_Lx <- function(x){
  return(x/2)
}

# P_F denotes P(F)
P_F = 1 - P_Lx(1)  

ans = P_F / (1 - P_Lx(0.75))

print(ans)