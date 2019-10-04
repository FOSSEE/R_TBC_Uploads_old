# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 67

# Let all the outcome of a dice roll be stored in a vector named 'Total'.

Total<-c(1:6)
A<-Total[Total%%2==0]
B<-c(1:4)

# Let the probability of event 'A' and 'B' be represented by 'Pr_A' and 'Pr_B' respectively.

Pr_A<-length(A)/length(Total)
Pr_B<-length(B)/length(Total)
print(Pr_A)
print(Pr_B)

# Let the intersection of event 'A' and 'B' be stored in 'A_inter_B'.
# Probability of intersection of event 'A' and 'B' be represented by 'Pr_A_inter_B'. 

A_inter_B<-intersect(A,B)
Pr_A_inter_B<-length(A_inter_B)/length(Total)
print(Pr_A_inter_B)

# Product of probabilities of event 'A' and 'B'.

print(Pr_A*Pr_B)

# The answer may slightly vary due to being represented as a real number rather than a fraction.