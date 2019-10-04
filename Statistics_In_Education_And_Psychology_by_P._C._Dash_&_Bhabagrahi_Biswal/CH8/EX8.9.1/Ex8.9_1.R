# Page.No 8.22 - 8.25

#(i) By rank difference method
marks_in_history<-c(6,8,4,5,2)
marks_in_engilsh<-c(9,6,12,10,13)

#Ranks of marks
R1<-rank(marks_in_history)
R2<-rank(marks_in_engilsh)

P<-cor(R1,R2) # Correlation

cat("The correlation is ",P,"Perfect negative correlation")


##(ii) By product moment method

r<-cor(marks_in_history,marks_in_engilsh,method = "pearson")
cat("The correlation is",r,"It is very high negative correlation")

