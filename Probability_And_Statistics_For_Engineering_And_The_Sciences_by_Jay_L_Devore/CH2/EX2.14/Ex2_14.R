#Ex2.14, Page 60

#P(A)=>probability that a household gets internet service
pa<-60/100

#P(B)=>probability that a household gets TV service
pb<-80/100

#P(A n B)=>probability that a household gets both services
pab<-50/100

#To find probability that a household gets at least one of the services
p1<-pa+pb-pab
cat("P(at least one service)=P(A U B) =",p1,"\n")

pa_b<-p1-pa
pb_a<-p1-pb
#To find probability that a household gets exactly one service
p2<-pa_b+pb_a
cat("P(exactly one service)=",p2)