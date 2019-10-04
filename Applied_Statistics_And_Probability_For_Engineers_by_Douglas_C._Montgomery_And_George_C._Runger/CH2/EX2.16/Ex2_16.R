#Probabilities of Events(Pg no. 31)

a = 0.1
b = 0.3
c = 0.5
d = 0.1

A = a + b
B = b + c + d
C = d

cat("P(A) =",A)
cat("P(B) =",B)
cat("P(C) =",C)

cat("P(A_bar) =",1-A)
cat("P(B_bar) =",1-B)
cat("P(C_bar) =",1-C)

cat("P(A_intersection_B) =",b)
cat("P(A_union_B) =",a+b+c+d)
cat("P(A_intersection_c) =",0)