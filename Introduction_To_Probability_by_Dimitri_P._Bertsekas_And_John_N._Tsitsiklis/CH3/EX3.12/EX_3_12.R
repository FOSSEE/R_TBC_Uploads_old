#EX_3_12
#page 25
#metro train problem
A1<-numeric(5)
A2<-numeric(15)
A1<-sample(c(1:5),replace = FALSE)
A2<-sample(c(1:15),replace = FALSE)
pA1<-1/4
fyA1<-1/length(A1)
fyA2<-1/length(A2)
for(i in 1:15)
{
  if(A2[i]<5)
  {
    print(sum(prod(pA1,fyA1),prod((1-pA1),fyA2)))
  }else{
    print(prod((1-pA1),fyA2))
  }
}