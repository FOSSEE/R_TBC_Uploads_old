                                      # Page no. : 572

# Worked out examples 3 and 4

chi_sq <- 14.41   # Chi-square value
N <- 85   # No. of people

phi_coeff <- round(sqrt(chi_sq / N), 2)   # Phi coefficient

cat("Phi coefficient is", phi_coeff)

chi_sq <- 8.78   # Chi-square value
N <- 118   # No. of people
df_smaller <- 2 - 1   # Degree of freedom on smaller side (2 x 2 contingency table)

c_phi_coeff <- round(sqrt(chi_sq / (N * df_smaller)), 2)   # Cramer's phi coefficient

cat("Cramer's phi coefficient is", c_phi_coeff)   # Book's answer is wrong
