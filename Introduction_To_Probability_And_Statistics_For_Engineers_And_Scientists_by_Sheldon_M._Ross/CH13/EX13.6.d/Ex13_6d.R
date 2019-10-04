X<-c(29, 33, 35, 42, 36, 44, 43, 45)
u =30;
sig = 8;
d =0.5;
B =5;
Y = X - u - (d*sig);
S = matrix(0,9);
S[1] =0;
for (i in 2:9){
  S[i]= max(S[i-1] + Y[i-1], 0)
}
cat("S is",S)
cl = B*sig;
cat(cl)
answer =100;
for ( i in 1:9){
  if(S[i]>cl){
    answer = i
  }
}
cat("The mean has increased after observing the ",answer-1," subgroup average")