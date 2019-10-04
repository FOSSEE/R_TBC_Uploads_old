#EX_1_8
#page 19
p1<- 2/3
#probabilty of team n succes
#p(SS)+P(FS)=1/2
p2<- 1/2
#probabilty atleast one got selected =p(SS)+p(SF)+p(FS)
p3<-3/4
#Difference of p3 and p1= p(FS)
FS<-sum(p3,-p1)
FS
SF<-sum(p3,-p2)
SF
p4<-sum(p1,p2)
SS<-sum(p4,-p3)
SS
#the probability that it was designed by team N
#conditional probabilty
#P({FS}|{SF,FS})
PN<- FS/sum(FS,SF)
PN#prints the probability that it is designed by N
