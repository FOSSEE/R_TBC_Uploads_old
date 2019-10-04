# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 28

S<-c(1);
n<-c(50000);
k<-c(3);
for(i in 1:k)
{
  S=S*n;
  n=n-1;
}
print(S)

# The answer may slightly vary due to rounding off values.