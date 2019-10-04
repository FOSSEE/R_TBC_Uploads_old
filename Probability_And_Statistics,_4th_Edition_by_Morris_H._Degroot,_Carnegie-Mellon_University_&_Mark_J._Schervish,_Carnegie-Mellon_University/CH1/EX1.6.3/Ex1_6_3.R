# Chapter 1 - Introduction to Probability, Section - 1.6 (Finite Sample Spaces), Page No. - 23

# Possible outcomes for flipping 3 fair coins or sample space 'S' is 8 (2^3) containing objects from 's1' to 's8'.

s1<-c('H','H','H');
s2<-c('H','H','T');
s3<-c('H','T','H');
s4<-c('H','T','T');
s5<-c('T','H','H');
s6<-c('T','H','T');
s7<-c('T','T','H');
s8<-c('T','T','T');
S<-c(s1,s2,s3,s4,s5,s6,s7,s8);

# For converting a vector into matrix, "matrix" function in used. Final values are saved in a matrix named 'Sample'.
# For description of this function, type ?matrix in the console.

Sample<-matrix(S,nrow=8,ncol=3)

# Probability, 'p', assigned to each outcome is 1/8.

p<-1/8;

# "nrow" and "ncol" give the number of rows and columns in a matrix.
# A "for loop" is used below to examine all the possible cases where outcome is exactly 2 heads.
# For calculation purpose 2 variables namely, 'Heads' and 'outcome' are declared with initial value as 0.
# The "for loop" will check for all outcomes consisting of 2 heads in the sample space.

Heads<-c(0);
outcome<-c(0);
for(i in 1:nrow(Sample))
{
  for(j in 1:ncol(Sample))
  {
    if(isTRUE(Sample[i,j]=='H'))
    {
      Heads=Heads+1;
    }
  }
  if(Heads==2)
  {
    outcome=outcome+1;
  }
  Heads<-c(0);
}

# Number of all possible outcomes in the sample space where there are exactly 2 heads is stored in 'outcome'.
# Required probability is stored in 'Pr'.

Pr=outcome*p;
print(Pr)

# The answer may slightly vary due to being represented as a real number rather than a fraction.