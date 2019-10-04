require(pracma)
f <- function(x,y) {
  exp(-x*y) *(sin(6*pi*x)+cos(8*pi*y))
}

dblquad(f = f,xa = 0,xb = 1,ya = 0,yb = 1)

n <- seq(0,1,0.01)
multiarray = list(); 
multiarray <- meshgrid(n,n)
Z<-f(multiarray$X,multiarray$Y)


persp(multiarray$X[1,],multiarray$Y[,1],Z,theta=30, phi=30, expand=0.6,col='lightblue', shade=0.75, ltheta=120,ticktype='detailed')

set.seed(4837)
mean(f(runif(10000),runif(10000)))
mean(f(runif(10000),runif(10000)))
mean(f(runif(10000),runif(10000)))

GetHalton <- function(HowMany, Base) {
  Seq = matrix(0,HowMany,1)
  NumBits = 1+round(log(HowMany)/log(Base));
  VetBase = Base^(-(1:NumBits));
  WorkVet = matrix(0,1,NumBits);
  for (i in 1:HowMany){
    j = 1;
    ok = 0;
    while (ok == 0){
      WorkVet[j] = WorkVet[j]+1;
      if (WorkVet[j] < Base){
        ok = 1;
      }
      else{
        WorkVet[j] = 0;
        j = j+1;
      }
    }
    Seq[i] = sum(WorkVet * VetBase)
  }
  return(Seq)
}

seq2 = GetHalton(10000,2)
seq4 = GetHalton(10000,4)
seq5 = GetHalton(10000,5)
seq7 = GetHalton(10000,7)
mean(f(seq2,seq5))
mean(f(seq2,seq4))
mean(f(seq2,seq7))
mean(f(seq5,seq7))

set.seed(327439)
mean(f(runif(100),runif(100)))
mean(f(runif(500),runif(500)))
mean(f(runif(1000),runif(1000)))
mean(f(runif(1500),runif(1500)))
mean(f(runif(2000),runif(2000)))

mean(f(seq2[1:100],seq7[1:100]))
mean(f(seq2[1:500],seq7[1:500]))
mean(f(seq2[1:1000],seq7[1:1000]))
mean(f(seq2[1:1500],seq7[1:1500]))
mean(f(seq2[1:2000],seq7[1:2000]))