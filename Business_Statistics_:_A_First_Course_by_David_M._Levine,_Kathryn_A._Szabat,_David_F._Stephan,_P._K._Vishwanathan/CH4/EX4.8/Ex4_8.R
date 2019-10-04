# Determining Independence

Television_Refresh_Rate <- c("Faster","Standard","Total")
Satisfaction_Yes<- c(64,176,240)
Satisfaction_No<- c(16,44,60)
Total<- c(80,220,300)
data<- cbind(Television_Refresh_Rate,Satisfaction_Yes,Satisfaction_No,Total)
p_satisfied_given_faster<- (Satisfaction_Yes[1]/Total[3])/(Total[1]/Total[3])
p_satisfied<- Satisfaction_Yes[3]/Total[3]
p_satisfied_given_faster
p_satisfied