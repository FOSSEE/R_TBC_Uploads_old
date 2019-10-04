# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 37

# The number of boys, girls, total students and students to be selected are represented by 'B', 'G', 'Total' and 'S' respectively.

B<-c(15);
G<-c(30);
Total=B+G;
S<-c(10);

# The number of boys and girls required are represented by 'B_r' and 'G_r' respectively.

B_r<-c(3);
G_r<-c(7);

# A function 'C' is defined to determine the number of possible combinations as per given input where variables 'output','N' and 'D' are declared for computation operations.

C<-function(n,k)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:k)
  {
    N=N*(n-i+1);
    D=D*(i);
  }
  output<-N/D;
  return(output)
}

# Probability of getting exactly 3 boys is represented by 'p'.

p=(C(B,B_r)*C(G,G_r))/C(Total,S);
print(p)

# The answer may slightly vary due to rounding off values.