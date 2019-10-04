                                        # Page no. : 565 - 566

# How are you doing?

# 2nd Question (d) part

chi_sq <- 12   # Chi-square value
N <- 100   # No. of people

phi_coeff <- round(sqrt(chi_sq / N), 2)   # Phi coefficient

cat("Phi coefficient is", phi_coeff)

# 3rd Question (d) part

chi_sq <- 20   # Chi-square value
N <- 200   # No. of people
df_smaller <- 4 - 1   # Degree of freedom on smaller side (4 x 6 contingency table)

c_phi_coeff <- round(sqrt(chi_sq / (N * df_smaller)), 2)   # Cramer's phi coefficient

cat("Cramer's phi coefficient is", c_phi_coeff)