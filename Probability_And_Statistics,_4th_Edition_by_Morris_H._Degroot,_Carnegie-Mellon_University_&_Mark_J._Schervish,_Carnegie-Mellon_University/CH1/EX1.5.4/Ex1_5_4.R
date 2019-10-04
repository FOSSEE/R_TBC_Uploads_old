# Chapter 1 - Introduction to Probability, Section - 1.5 (The Definition of Probability), Page No. - 19

x<-c(4,200);
y<-c(1,150);

# "plot" and "rect" functions are used to plot and highlight areas in a graph plot. 
# For description of these functions, type ?plot and ?rect in the console.

plot(x, y, xlab = "Water", ylab = "Electric", panel.first = rect(x[1],y[1],x[2],y[2]))

# Area of sample space 'S' is represented by 'Area_S'.

Area_S=(y[2]-y[1])*(x[2]-x[1])
A<-c(100,200);
B<-c(115,150);

# Area of 'A' is represented by 'Area_A'.

Area_A=(y[2]-y[1])*(A[2]-A[1]);

# Plotting area of 'A' in red color.

rect(A[1],y[1],A[2],y[2],col='red')

# Area of 'B' is represented by 'Area_B'.

Area_B=(B[2]-B[1])*(x[2]-x[1]);

# Plotting area of 'B' in blue color.

rect(x[1],B[1],x[2],B[2],col='blue')

# Probabilities of area 'A' and 'B' are represented by 'Pr_A' and 'Pr_B' respectively. 

Pr_A=Area_A/Area_S;
print(Pr_A)
Pr_B=Area_B/Area_S;
print(Pr_B)

# Area of intersection of 'A' and 'B' is represented by 'Area_A_inter_B'.

Area_A_inter_B=(B[2]-B[1])*(A[2]-A[1]);

# Plotting area of intersection in yellow color.

rect(A[1],B[1],A[2],B[2],col='yellow')

# Probability of area of intersection of 'A' and 'B' is represented by 'Pr_A_inter_B'.

Pr_A_inter_B=Area_A_inter_B/Area_S;
print(Pr_A_inter_B)

# Probability of either one of the two demands to be high.
# Here, probability of union of area A and B is represented by 'Pr_A_union_B'.

Pr_A_union_B=Pr_A + Pr_B - Pr_A_inter_B
print(Pr_A_union_B)

# The answer may slightly vary due to rounding off values.