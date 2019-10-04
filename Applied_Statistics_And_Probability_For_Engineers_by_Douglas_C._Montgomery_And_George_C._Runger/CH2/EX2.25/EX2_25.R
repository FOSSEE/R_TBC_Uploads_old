#Continue to EX2_24

#(Pg no. 43)

total = 50
defective_parts = 3
non_defective_parts = 47

p = (defective_parts/total)*((defective_parts-1)/(total-1))*(non_defective_parts/(total-2))

cat(p,"is the probability that the first two parts selected are defective and the third is not defective")

#The answer may slightly vary due to rounding off values
