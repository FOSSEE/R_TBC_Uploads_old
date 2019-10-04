days_in_a_year = 365
n = 0
p = 1
i = 0
while(p >= 0.5){
  p = p*(days_in_a_year - i)/ days_in_a_year
  n = n + 1
  i = i + 1
}

print(n)