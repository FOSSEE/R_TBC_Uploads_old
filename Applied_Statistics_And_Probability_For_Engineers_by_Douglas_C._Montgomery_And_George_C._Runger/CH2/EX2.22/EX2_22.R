#Surface flaws and defectives(Pg no. 40)

f1 = 40 #total_surface flaws
d1 = 10 #defectiv and surface flawed
P1 = d1/f1 

d2 = 18 #defective but not surface flawed
f2 = 400 - f1 #without surface flawed
P2 = d2/f2

cat("conditional probability P(d1|f1) is",P1)
cat("conditional probability P(d2|f2) is",P2)
