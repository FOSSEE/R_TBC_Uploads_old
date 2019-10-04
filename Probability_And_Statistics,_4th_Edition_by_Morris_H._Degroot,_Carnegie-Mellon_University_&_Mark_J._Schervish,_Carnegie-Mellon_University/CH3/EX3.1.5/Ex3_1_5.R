# Chapter 3 - Random Variables and Distributions, Section - 3.1 (Random Variables and Discrete Distributions), Page No. - 95

X<-c(4,200);
Y<-c(1,150);

# Area of sample space 'S' is represented bY 'Area_S'.

Area_S=(Y[2]-Y[1])*(X[2]-X[1])
A<-c(100,200);

# Area of 'A' is represented bY 'Area_A'.

Area_A=(Y[2]-Y[1])*(A[2]-A[1]);

# Probability of area 'A' is represented by 'Pr_A'. 

Pr_A=Area_A/Area_S;
print(Pr_A)

C<-c(50,175);

# Area of 'C' is represented bY 'Area_C'.

Area_C=(Y[2]-Y[1])*(C[2]-C[1]);

# Probability of area 'C'is represented by 'Pr_C'. 

Pr_C=Area_C/Area_S;
print(Pr_C)

# The answer may slightly vary due to rounding off values.