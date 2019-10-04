# Chapter 3 - Random Variables and Distributions, Section - 3.4 (Bivariate Distributions), Page No. - 119

# Let the values of joint probability function of 'X' and 'Y' be represented by a matrix named 'f'. 
# Let 'y1' to 'y4' represent the values in each column of the joint probability table 3.2 as mentioned in the textbook.

y1<-c(0.1,0.3,0);
y2<-c(0,0,0.2);
y3<-c(0.1,0.1,0);
y4<-c(0,0.2,0);
x<-c(y1,y2,y3,y4);

# For converting a vector into matrix, "matrix" function in used. Final values are saved in the matrix 'f'.
# For description of this function, type ?matrix in the console.

f<-matrix(x,nrow=3,ncol=4)

# A function 'F' is defined. It finds the required probability. In function definition, variables 'a','b','c' and 'd' represents the limits of rows and columns of matrix 'f'.
# A variable 'outcome' is declared in the function for computation operation.

F<-function(a,b,c,d)
{
  outcome=0;
  for(i in a:c)
    {
      for(j in b:d)
        (
          outcome=outcome+f[i,j]
        )
    }
  return(outcome)
}

# Let the required probability for the case of "x >= 2" and "y >= 2", be represented by 'Pr_1' and for the case of "X = 1" by 'Pr_2'.

Pr_1=F(2,2,nrow(f),ncol(f));
print(Pr_1)
Pr_2=F(1,1,1,ncol(f));
print(Pr_2)