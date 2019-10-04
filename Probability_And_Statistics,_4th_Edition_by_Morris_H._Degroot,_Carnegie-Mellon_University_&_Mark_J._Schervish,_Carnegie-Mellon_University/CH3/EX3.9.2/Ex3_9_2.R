# Chapter 3 - Random Variables and Distributions, Section - 3.9 (Functions of Two or More Random Variables), Page No. - 176

# Let 'Y' be the vector storing that point where joint probability is to be determined.

Y1<-c(3);
Y2<-c(5);
Y3<-c(8);
Y<-c(Y1,Y2,Y3);

# A function 'C' is defined to determine the number of possible combinations as per given input where variables 'final','N' and 'D' are declared for computation operations.

C<-function(n,k)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:k)
  {
    N=N*(n-i+1);
    D=D*(i);
  }
  final<-N/D;
  return(final)
}

# A function named 'point' is used to determine the number of points in a set.
# Variable named 'product' is defined for internal computations in the function.

point<-function(a)
{
  product<-c(1);
  for(j in 1:length(a))
  {
    product=product*C(10,a[j])
  }
  return(product)
}

# Let the joint probability function be represented by 'g'.

g<-function(Y)
{
  return(point(Y)/2^(10*length(Y)))
}
print(g(Y))

# The answer may slightly vary due to rounding off values.