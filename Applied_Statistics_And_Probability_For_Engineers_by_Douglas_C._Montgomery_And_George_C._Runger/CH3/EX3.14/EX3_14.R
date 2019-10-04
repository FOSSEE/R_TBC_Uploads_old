#Number of voice lines(Pg no. 78)

max_lines = 48
min_lines = 0

u = (max_lines+min_lines)/2 #expectation

sd = sqrt((((max_lines-min_lines+1)^2)-1)/12) #standard deviation

cat("Expectation E(X) =",u)
cat("Standard Deviation  SD(X) =",sd)
#The answer may slightly vary due to rounding off values