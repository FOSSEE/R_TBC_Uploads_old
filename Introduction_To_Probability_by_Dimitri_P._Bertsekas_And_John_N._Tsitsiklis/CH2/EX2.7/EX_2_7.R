#EX_2_7
#page 20
#Quiz problem
x1<-numeric(3)#creating the sample list
x2<-numeric(3)
p1<-numeric(3)
p2<-numeric(3)
ex1<-numeric(3)
ex2<-numeric(3)
x1<-c(0,100,300)#creating the sample space of the x1 and x2
x2<-c(0,200,300)
p1<-c(0.2,0.8*0.5,0.5*0.8)#creating the sample space of the probabilty of both x1 and x2
p2<-c(0.5,0.5*0.2,0.5*0.8)
#loop to calculate the multiplication of both probabilities
for(i in 1:3)
{
  ex1[i]<-prod(x1[i],p1[i])
  ex2[i]<-prod(x2[i],p2[i])
}
sum(ex1)#the expected values of the both x1 and x2
sum(ex2)