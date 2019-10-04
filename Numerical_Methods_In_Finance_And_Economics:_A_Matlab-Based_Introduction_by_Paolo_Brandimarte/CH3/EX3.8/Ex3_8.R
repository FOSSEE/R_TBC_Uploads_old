N = 20
A<-diag(N)

for (i in 1:N){
  for (j in (i+1):N){
    A[i,j] = -1
  }
}

b=-rep(1,N)
b[N] = 1
solve(A,b)

b[N] = 1.00001
solve(A,b)

1/rcond(A,'I')
2^18
0.00001 * 2^18