# Addition Law : P(F and P) = P(F) + P(P) - P(F or P)

Type_of_position <- c("Managerial", "Professional","Technical","Clerical")
Sex_male <- c(8,31,52,9)
Sex_female <- c(3,13,17,22)
total_r <- c(11,44,69,31)
total_c <- c(" ",100,55,55)
Compny_HR_data <- cbind(Type_of_position,Sex_male,Sex_female,total_r)
Compny_HR_data <- rbind(Compny_HR_data,total_c)
View(Compny_HR_data)

#  F denote the event of female  and  P denote the event of professional worker

# Probability of event of female  :
Pb_F = sum(Sex_female)/sum(sum(Sex_female),sum(Sex_male))
Pb_F

# Probability of event of professional worker :
Pb_P = sum(Sex_male[2],Sex_female[2])/sum(sum(Sex_female),sum(Sex_male))
Pb_P

# Probability of female or Professional worker :
Pb_F_P = Sex_female[2]/sum(sum(Sex_female),sum(Sex_male))
Pb_F_P

# probability that the employee is female or a professional worker :
Pb_F_a_P <- Pb_F + Pb_P - Pb_F_P
Pb_F_a_P  
