# Chapter 2 - Conditional Probability, Section - 2.4 (The Gambler's Ruin Problem), Page No. - 89

i<-c(99);
k<-c(100);
p<-c(0.4);

# Let the probability of gambler 'A' winning before gambler 'B' be represented by 'a'.

a=(((((1-p)/p)^i)-1)/((((1-p)/p)^k)-1))
print(a)

# The answer may slightly vary due to being represented as a real number rather than a fraction.