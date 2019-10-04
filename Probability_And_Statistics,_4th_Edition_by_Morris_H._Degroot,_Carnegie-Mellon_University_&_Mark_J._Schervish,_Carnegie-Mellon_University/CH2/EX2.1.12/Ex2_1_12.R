# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 62

# Total number of compositions which include one for failure and ten for success and probabililty of event 'E1' be represented by 'total' and 'Pr_E1'.
# For calculation of 'Pr_E1', "for" loop is used in order to simulate summation.
# Number of compositions of success be represented by 'success'. 

total<-c(11);
success=total-1;
Pr_E1<-c(0);
for(j in 1:total)
{
  Pr_E1=Pr_E1+((1/total)*((j-1)/success));
}
print(Pr_E1)

# The answer may slightly vary due to being represented as a real number rather than a fraction.