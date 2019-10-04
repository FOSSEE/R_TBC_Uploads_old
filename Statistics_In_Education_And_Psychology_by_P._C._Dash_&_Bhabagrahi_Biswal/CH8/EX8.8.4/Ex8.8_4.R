#Page.No 8.11

#Marks of the five students
marks_in_english<-c(78,80,81,60,90)
marks_is_science<-c(80,83,85,95,50)

# Ranks 
R1<-rank(marks_in_english)
R2<-rank(marks_is_science)

P<-cor(R1,R2)

cat("There is Negative correlation i.e ",P)
