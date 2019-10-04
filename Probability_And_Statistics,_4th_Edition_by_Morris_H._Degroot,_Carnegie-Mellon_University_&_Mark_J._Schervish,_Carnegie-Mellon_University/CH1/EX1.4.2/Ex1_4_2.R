# Chapter 1 - Introduction to Probability, Section - 1.4 (Set Theory), Page No. - 7

S<-c(1:6)

A<-S[S%%2==0]
C<-S[S>1]

# To compare values in vector 'A' and 'C', "%in%" is used. It compares each value
# of 'A' with 'C' and returns true if they exist in 'C' which indicates that 'A' is
# contained in 'C'.

ans<-A%in%C
print(ans)