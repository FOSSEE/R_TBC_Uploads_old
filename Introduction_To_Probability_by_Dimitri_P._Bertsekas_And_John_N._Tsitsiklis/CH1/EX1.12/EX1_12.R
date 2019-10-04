#EX_1_12
#page26
mat<-numeric(3)
win <- matrix(c(0.3, 0.4, 0.5),nrow=3,byrow=TRUE, dimnames=list(c("p(B|A1)","P(B|A2)","P(B|A3)"),c("probability"))) #the probability of winning given playing with i'th  opponent
win
playing <- matrix(c(0.5, 0.25, 0.25),nrow=3,byrow=TRUE,dimnames=list(c("p(A1)","P(A2)","P(A3)"),c("probability"))) #the probability of playing with i'th opponent
playing
for(i in 1:3){mat[i]<-playing[i]*win[i]} #to do the total multiplication theorem 
mat#printing the product 
totalprobability<-sum(mat) #total probability of winning,P(B)
totalprobability#prints the total probabilty of winning p(B)
