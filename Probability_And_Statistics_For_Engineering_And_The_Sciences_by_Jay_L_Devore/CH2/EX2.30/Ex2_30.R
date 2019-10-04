#Ex2.30, Page 78

# % of messages which come into account 1
pa1<-70/100

# % of messages which come into account 2
pa2<-20/100

# % of messages which come into account 3
pa3<-10/100

# % of messages which are spam in account 1
pb_a1<-1/100

# % of messages which are spam in account 2
pb_a2<-2/100

# % of messages which are spam in account 3
pb_a3<-5/100

#To find the probability that a randomly selected message is spam 
#Using law of total probability
pb<-pa1*pb_a1+pa2*pb_a2+pa3*pb_a3
print(paste("P(Randomly selected message is spam):",pb,"and thus,",pb*100,"% messages will be spam"))