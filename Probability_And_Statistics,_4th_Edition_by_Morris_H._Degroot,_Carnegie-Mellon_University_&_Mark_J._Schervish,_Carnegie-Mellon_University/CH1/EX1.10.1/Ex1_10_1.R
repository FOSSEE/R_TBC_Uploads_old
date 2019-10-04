# Chapter 1 - Introduction to Probability, Section - 1.10 (The Probability of a Union of Events), Page No. - 47

# 'Total' represents total students.

Total<-c(200);
A1<-c(137);
A2<-c(50);
A3<-c(124);

# Students enrolled in both Mathematics and History, History and Music, Music and Mathematics & all three are represented by 'A1_A2', 'A2_A3', 'A3_A1' and 'A1_A2_A3' respectively.

A1_A2<-c(33);
A2_A3<-c(29);
A3_A1<-c(92);
A1_A2_A3<-c(18);

# Probability of A1 event is represented by Pr_A1.
# Probability of A2 event is represented by Pr_A2.
# Probability of A3 event is represented by Pr_A3.
# Probability of A1_A2 event is represented by Pr_A1_A2.
# Probability of A2_A3 event is represented by Pr_A2_A3.
# Probability of A3_A1 event is represented by Pr_A3_A1.
# Probability of A1_A2_A3 event is represented by Pr_A1_A2_A3.

Pr_A1=A1/Total;
Pr_A2=A2/Total;
Pr_A3=A3/Total;
Pr_A1_A2=A1_A2/Total;
Pr_A2_A3=A2_A3/Total;
Pr_A3_A1=A3_A1/Total;
Pr_A1_A2_A3=A1_A2_A3/Total;

print(Pr_A1)
print(Pr_A2)
print(Pr_A3)
print(Pr_A1_A2)
print(Pr_A2_A3)
print(Pr_A3_A1)
print(Pr_A1_A2_A3)

# Probability of A1 union A2 union A3 is represented by 'Pr'.

Pr=Pr_A1 + Pr_A2 + Pr_A3 - Pr_A1_A2 - Pr_A2_A3 - Pr_A3_A1 + Pr_A1_A2_A3;
print(Pr)

# The answer may slightly vary due to being represented as a real number rather than a fraction.