# Chapter 1 - Introduction to Probability, Section - 1.6 (Finite Sample Spaces), Page No. - 22

s1<-1;
s2<-2;
s3<-3;
s4<-4;
s5<-5;
S<-c(s1,s2,s3,s4,s5)
A<-c(s1,s2,s3)

# As sum of all probabilities is 1. Therefore, for the given sample space 'alpha' is '1/15'.

alpha<-1/15;
Pr<-0;
for (i in 1:length(A))
  {
    Pr=Pr+alpha*A[i];
  }
print(Pr)

# The answer may slightly vary due to being represented as a real number rather than a fraction.