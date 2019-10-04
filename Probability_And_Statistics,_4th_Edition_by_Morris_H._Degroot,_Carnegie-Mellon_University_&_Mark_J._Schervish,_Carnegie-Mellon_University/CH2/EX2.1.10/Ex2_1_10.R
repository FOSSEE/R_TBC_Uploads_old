# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 61

# Total numbers and probabililty of event 'A' be represented by 'total' and 'Pr_A'.
# For calculation of 'Pr_A', "for" loop is used in order to simulate summation.

total<-c(50)
Pr_A<-c(0);
for(i in 1:total)
{
  Pr_A=Pr_A+(1/total)*(1/i);
}

print(Pr_A)

# The answer may slightly vary due to rounding off values.