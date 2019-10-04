# Chapter 3 - Random Variables and Distributions, Section - 3.1 (Random Variables and Discrete Distributions), Page No. - 96

X<-c(4,200);
Y<-c(1,150);

# Area of sample space 'S' is represented bY 'Area_S'.

Area_S=(Y[2]-Y[1])*(X[2]-X[1])
A<-c(100,200);
B<-c(115,150);

# Area of 'A' is represented by 'Area_A'.

Area_A=(Y[2]-Y[1])*(A[2]-A[1]);

# Area of 'B' is represented by 'Area_B'.

Area_B=(B[2]-B[1])*(X[2]-X[1]);

# Area of intersection of 'A' and 'B' is represented by 'Area_A_inter_B'.

Area_A_inter_B=(B[2]-B[1])*(A[2]-A[1]);

# Let the probability function of 'Z' be represented by 'f'.

f<-function(z)
{
  if(z==1)
  {
    return((Area_A/Area_S) + (Area_B/Area_S) - (Area_A_inter_B/Area_S)); 
  }
  else if(z==0)
  {
    return(1-((Area_A/Area_S) + (Area_B/Area_S) - (Area_A_inter_B/Area_S))); 
  }
  else
  {
    return(0);
  }
}

# For Z=1

print(f(1))

# For Z=0

print(f(0))

# Otherwise

print(f(2))

# The answer may slightly vary due to rounding off values.