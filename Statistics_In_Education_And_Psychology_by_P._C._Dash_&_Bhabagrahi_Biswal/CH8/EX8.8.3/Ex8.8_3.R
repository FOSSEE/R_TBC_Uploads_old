# Page.No 8.10-8.11

# Rank of the students 
Rank_in_theory<-c(1,10,2,9,4,8,7,5,6,3)
Rank_in_practical<-c(10,1,4,2,9,3,7,5,6,8)

p<-cor(Rank_in_theory,Rank_in_practical)

cat("There is high negative correlation i.e ",p)
