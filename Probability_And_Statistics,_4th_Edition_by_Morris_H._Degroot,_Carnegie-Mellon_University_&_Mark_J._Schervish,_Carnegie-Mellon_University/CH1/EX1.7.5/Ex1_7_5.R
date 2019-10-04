# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 27

# All possible numbers are represented by 'A', possible positions are represented by 'B' and total possible outcomes by 'O'.
# "seq" function is used to create a sequence having default seperation value as 1. 
# For description, type ?seq in the console.

A<-seq(0,39);
B<-c(3);
O<-c(1);
for(l in 1:B)
{
  O=O*length(A);
}
print(O)