# Chapter 3 - Random Variables and Distributions, Section - 3.1 (Random Variables and Discrete Distributions), Page No. - 94

X<-c(4,200);
Y<-c(1,150);

# "plot" and "rect" functions are used to plot and highlight areas in a graph plot. 
# For description of these functions, type ?plot and ?rect in the console.

plot(X, Y, Xlab = "Water", Ylab = "Electric", panel.first = rect(X[1],Y[1],X[2],Y[2]))

# Area of sample space 'S' is represented bY 'Area_S'.

Area_S=(Y[2]-Y[1])*(X[2]-X[1])
A<-c(100,200);
B<-c(115,150);

# Area of 'A' is represented bY 'Area_A'.

Area_A=(Y[2]-Y[1])*(A[2]-A[1]);

# Plotting area of 'A' in red color.

rect(A[1],Y[1],A[2],Y[2],col='red')

# Area of 'B' is represented bY 'Area_B'.

Area_B=(B[2]-B[1])*(X[2]-X[1]);

# Plotting area of 'B' in blue color.

rect(X[1],B[1],X[2],B[2],col='blue')

# Plotting area of 'A' union 'B' in green color.
# "legend" function is used to add a legend on the plot. For description, type ?legend in the console.

rect(A[1],Y[1],A[2],Y[2],col='green',density=15)
rect(X[1],B[1],X[2],B[2],col='green',density=15)
legend("topright", legend=c("A union B"),fill='green', density=60)