# Chapter 3 - Random Variables and Distributions, Section - 3.6 (Conditional Distributions), Page No. - 143

# Let the values of joint probability function of 'X' and 'Y' be represented by a matrix named 'f'. 
# Let 'y1' to 'y4' represent the values in each column of the table 3.4 as mentioned in the textbook.

y1<-c(0.1,0.3,0);
y2<-c(0,0,0.2);
y3<-c(0.1,0.1,0);
y4<-c(0,0.2,0);
x<-c(y1,y2,y3,y4);

# For converting vectors into a matrix, "matrix" function in used. Final values are saved in the matrix 'f'.
# For description of this function, type ?matrix in the console.

f<-matrix(x,nrow=3,ncol=4)

# Let the marginal probability function of 'X' be represented by 'f1'.
# A variable 'outcome' is declared in the function for computation operation.

f1<-function(x)
{
  outcome=0;
  for(i in 1:ncol(f))
  {
    outcome=outcome+f[x,i];
  }
  return(outcome)
}

# Let the function for finding required conditional probabilities be represented by 'g2'.

g2<-function(y)
{
  return(f[2,y]/f1(2))
}

# Required conditional probabilities.

for(i in 1:ncol(f))
{
  print(g2(i))
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.