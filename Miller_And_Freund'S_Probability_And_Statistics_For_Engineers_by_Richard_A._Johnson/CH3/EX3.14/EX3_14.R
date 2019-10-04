#Permissibility of probability 
#if 
#1)0<=p(A)<=1 for each event A in S
#2)P(S)=1
#3)A and B are Mutually Exclusive in event
#Ans:-
#Given There is Three Mutually exClusive event A,B and c
#a)
permissibility<-function(c){
  Flag=TRUE
  i=1
  while(i<=length(c)){

    if(c[i]<0){
      Flag=FALSE
      return(" negative value not permissible")
    }
    i=i+1
  }
  if(Flag==TRUE && sum(c)==1){
    return("Permissibile")
  }else{
    return(" Not Permissibile")
  }
}
prob1=c(1/3,1/3,1/3)
prob2=c(0.64,.38,-.02)
prob3=c(0.35,0.52,0.26)
prob4=c(0.57,0.24,0.19)
permissibility(prob1)
permissibility(prob2)
permissibility(prob3)
permissibility(prob4)

