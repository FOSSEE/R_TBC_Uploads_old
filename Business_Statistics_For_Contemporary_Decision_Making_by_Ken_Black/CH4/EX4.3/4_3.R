# Special Law of Addition : P (T and C) = P (T) + P (C) 

Type_of_position <- c("Managerial", "Professional","Technical","Clerical")
Sex_male <- c(8,31,52,9)
Sex_female <- c(3,13,17,22)
total_r <- c(11,44,69,31)
total_c <- c(" ",100,55,55)
Compny_HR_data <- cbind(Type_of_position,Sex_male,Sex_female,total_r)
Compny_HR_data <- rbind(Compny_HR_data,total_c)
View(Compny_HR_data)

# T denote technical, C denote clerical, and P denote professional.

# Probability of Technical position  :
Pb_T = sum(Sex_male[3],Sex_female[3])/sum(sum(Sex_female),sum(Sex_male))
Pb_T

# Probability of Clerical position  :
Pb_C = sum(Sex_male[4],Sex_female[4])/sum(sum(Sex_female),sum(Sex_male))
Pb_C

# Probability of professional position :
Pb_P = sum(Sex_male[2],Sex_female[2])/sum(sum(Sex_female),sum(Sex_male))
Pb_P

#  probability that a worker is either technical or clerical is  :
Pb_T_C = Pb_T + Pb_C
Pb_T_C

#   probability that a worker is either professional or clerical is :
Pb_P_C = Pb_P + Pb_C
Pb_P_C
