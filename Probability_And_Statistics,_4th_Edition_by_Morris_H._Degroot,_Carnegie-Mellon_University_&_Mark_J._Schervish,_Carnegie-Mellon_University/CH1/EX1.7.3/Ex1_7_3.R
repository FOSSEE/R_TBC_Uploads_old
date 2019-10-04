# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 26

# Number of dice is represented by 'A' and total possible outcomes by 'O'. For 2 dice (From Multiplication Rule) there will be a total of 6*6=36 possible outcomes.

A<-c(2);
O<-c(1);
for(l in 1:A)
{
  O=O*6;
}
print(O)