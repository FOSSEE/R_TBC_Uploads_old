no_of_couples = 10

ans = 0

for(i in 1:10){
  ans = ans + ((-1)^(i+1)) * choose(10,i) * (2^i) * factorial(19 - i) / factorial(19)
}

ans = 1 - ans
print(ans)