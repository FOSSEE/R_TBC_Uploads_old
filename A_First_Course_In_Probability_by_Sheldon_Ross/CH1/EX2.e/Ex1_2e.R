no_of_letters = 26
no_of_digits = 10

ans = 1
for(i in 0:3){
  ans = ans * (no_of_digits - i);
}
for(i in 0:2){
  ans = ans * (no_of_letters - i);
}

print(ans)