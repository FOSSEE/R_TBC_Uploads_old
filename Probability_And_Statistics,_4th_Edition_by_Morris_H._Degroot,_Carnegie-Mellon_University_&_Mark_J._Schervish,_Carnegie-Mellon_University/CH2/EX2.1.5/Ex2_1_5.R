# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 58

# Six events contribute to a sum of '7' and five events contribute to a sum of '8'.
# Total outcomes be represented by 'O'.

A<-c(6);
B=A+5;
O<-c(36);

# The probability of event 'A' and event 'B' be represented by 'Pr_A' and 'Pr_B' respectively.

Pr_A=A/O;
print(Pr_A)
Pr_B=B/O;
print(Pr_B)
p=Pr_A/Pr_B;
print(p)

# The answer may slightly vary due to being represented as a real number rather than a fraction.