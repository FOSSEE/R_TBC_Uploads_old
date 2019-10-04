#Ex2.25, Page 74

#Probability that memory card is purchased
pa<-0.6

#Probability that battery is purchased
pb<-0.4

#Probability that both memory card and battery is purchased
pab<-0.3

#Probability that an optional card was purchased given that individuals purchased extra battery
pa_b<-pab/pb
cat("P(A|B)=",pa_b,"\n")
cat("Of all individuals who purchased an extra battery,",pa_b*100,"% purchased an optional memory card\n")

#Probability that an additional battery was purchased given that individuals purchased an optional memory card
pb_a<-pab/pa
cat("P(B|A)=",pb_a,"\n")

if(pa_b!=pb_a)  print(paste("P(A|B) is not equal to P(B|A)"))