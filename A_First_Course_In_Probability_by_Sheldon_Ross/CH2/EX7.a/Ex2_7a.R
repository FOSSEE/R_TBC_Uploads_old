#P[i] = probability of (i+1)th horse winning

P = c(0.2, 0.2, 0.15, 0.15, 0.1, 0.1, 0.1)
print(P)

v1 = P[1] + P[2] + P[3]
print(v1)
v2 = P[1] + P[5] + P[6] + P[7]
if(v1 > v2){
  print("First wager")
} else{
  print("Second wager")
}
