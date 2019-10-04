#Contamination particles(Pg no. 31)

zero_contaminant = 0.4
three_contaminants = 0.10
four_contaminants = 0.05
five_and_above_contaminants = 0.10

E = three_contaminants+four_contaminants+five_and_above_contaminants

cat("P(E) = ",E,"is the probability that a wafer contains three or more particles in the inspected location")