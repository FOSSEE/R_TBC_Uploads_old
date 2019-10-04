#EX_1_29
#page46
TATTOO <- list("T","A","T","T","O","O")# listing the letters of Tattoo
L<-length(TATTOO)
M<-0
N<-0
R<-0
for(i in 1:L)#loop to count the number of same type of letters in tattoo
{
  if(as.character(TATTOO[i])=="T")
  {
    M<-(M+1)
  }

  else if(as.character(TATTOO[i])=="A")
  {
  N<- (N+1)
  }
  else if(as.character(TATTOO[i])=="O")
  {
    R<- (R+1)
  }
}
#the counters in the loop will count the number of same letters
repetition<- matrix(c(M,N,R),nrow=3,byrow=T,dimnames = list(c("T","A","O"),c("repetition")))
repetition#matrix give the number of repeated letters
Per<- function(p,q,s,t)
{
  X<-prod(factorial(p))/(factorial(q)*factorial(s)*factorial(t))
  return(X)
                       
}#function to calculate the permutation 
p<-Per(L,M,N,R)
p

