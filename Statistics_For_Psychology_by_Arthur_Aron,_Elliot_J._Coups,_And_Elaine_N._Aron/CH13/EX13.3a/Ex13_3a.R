                                      # Page no. : 562 - 563

# Effect Size for Chi-Square Tests for Independence

chi_sq <- 6.73   # Chi-square value
N <- 2045   # No. of people

phi_coeff <- round(sqrt(chi_sq / N), 2)   # Phi coefficient

cat("Phi coefficient is", phi_coeff)


chi_sq <- 12.70   # Chi-square value
N <- 100   # No. of people
df_smaller <- 1   # Degree of freedom on smaller side

c_phi_coeff <- round(sqrt(chi_sq / (N * df_smaller)), 2)   # Cramer's phi coefficient

cat("Cramer's phi coefficient is", c_phi_coeff)   # Book's answer is wrong

