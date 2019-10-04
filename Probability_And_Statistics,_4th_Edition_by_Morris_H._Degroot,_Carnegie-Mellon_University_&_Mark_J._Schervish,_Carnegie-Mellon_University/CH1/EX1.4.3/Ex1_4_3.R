# Chapter 1 - Introduction to Probability, Section - 1.4 (Set Theory), Page No. - 8

S<-c(1:6)
A<-S[S%%2==0]

# "!S%in%A" returns all elements as true which are not present in 'A'.
# Complement of 'A' is represented by 'A_Comp'.

A_Comp<-S[!S%in%A]
print(A_Comp)