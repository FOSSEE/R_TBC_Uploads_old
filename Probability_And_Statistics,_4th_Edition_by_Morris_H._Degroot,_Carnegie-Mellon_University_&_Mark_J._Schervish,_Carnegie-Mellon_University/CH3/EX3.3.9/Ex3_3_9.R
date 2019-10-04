# Chapter 3 - Random Variables and Distributions, Section - 3.3 (The Cumulative Distribution Function), Page No. - 115

# A function 'C' is defined in order to calculate combination of 'n' items taken 'k' at a time.
# Variables 'N' and 'D' are declared in the function definition of 'C' for calculation operations.

C<-function(n,k)
{
  N<-c(1);
  D<-c(1);
  if(k>0)
  {
    for(i in 1:k)
    {
      N=N*(n-i+1);
      D=D*(i);
    }
    output<-N/D;
    return(output)
  }
  else if (k==0)
  {
   return(1) 
  }
}

# Binomial distribution with parameters 'n' and 'p'.

n<-c(5);
p<-c(0.3);
f<-function(x)
{
  return(C(n,x)*(p^(x))*((1-p)^(n-x)))
}

# "pbinom" function is used in order to find the c. d. f. of a binomial distribution. For description type ?pbinom in the console.

F<-function(x)
{
  return(pbinom(x,n,p))
}

# Displaying values of p.f. 'f'. 

x<-c(0:5)
for(k in 1:length(x))
{
  print(f(x[k]))
}

# Displaying values of c.d.f. 'F'. 

for(l in 1:length(x))
{
  print(F(x[l]))
}

# The answer may slightly vary due to rounding off values.