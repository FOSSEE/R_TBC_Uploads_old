#Refer to code EX2_14(Sampling without replacement)

#Manufacturing Inspection(Pg no. 32)

size = 6
non_defective_parts = 47
num_of_subsets = 535095
diff_subsets = 15890700

P1 = num_of_subsets/diff_subsets

#subset with no defective parts
subset2 = choose(non_defective_parts,size)

P2 = subset2/diff_subsets

cat("Probability that a sample contains exactly 2 defective parts is",P1)
cat("Probability that no defective parts are selected is",P2)
#The answer might slightly vary due to rounding off values
