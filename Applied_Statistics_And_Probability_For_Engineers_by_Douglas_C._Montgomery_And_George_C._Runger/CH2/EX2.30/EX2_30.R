#install.packages("MASS")
library(MASS)

#Flaws and functions(Pg no. 49)

defective_and_surface_flawed = 2
total_defective_parts = 20
total_surface_flawed = 40
P = fractions((defective_and_surface_flawed*defective_and_surface_flawed)/(total_defective_parts*total_surface_flawed))
print(P)
cat("probability of surface flawed and defevtive is",P)

#The answer may slightly vary due to rounding off values