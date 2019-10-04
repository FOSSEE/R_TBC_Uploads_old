prob <- function(N, M, K) {
  if(N==1 & M==0){
    if(K >0){
      cat(result = 1)
    } else {
      cat(result =0)
    }
  } else if (N==0 & M==1){
    if(K <0){
      cat(result = 0)
    } else {
      cat(result =1)
    }
  } else if (N==0 & M==0 &K==0){
    cat(result =1)
  } else{
    cat(result = (prob(N-1, M, K-N-M)*(N/(N+M))) + (prob(N, M-1, K)*(M/(N+M))))
  }
}

pval <- function(n,m,t) {
  result = 2*min(prob(n,m,t), 1-prob(n,m,t-1));
}

'> pval(9,13,72)
001
Error: C stack usage  19923984 is too close to the limit

C:\Program Files\RStudio\bin>rstudio.exe --max-ppsize=5000000000

'

