# Chapter 1 - Introduction to Probability, Section - 1.4 (Set Theory), Page No. - 12

#s1<-c('H','H','H')
#s2<-c('H','H','T')
#s3<-c('H','T','H')
#s4<-c('H','T','T')
#s5<-c('T','H','H')
#s6<-c('T','H','T')
#s7<-c('T','T','H')
#s8<-c('T','T','T')

# Values of each object of sample 'S' are discrete.
# Hence, these objects can be declared as seperate characters to perfrom computational operations.

S<-c('s1','s2','s3','s4','s5','s6','s7','s8')
A<-c('s1','s2','s3','s4','s5','s6','s7')
B<-c('s1','s2','s4','s6')
C<-c('s4','s5','s6','s8')
D<-c('s8')

# Value for whether 'A' is contained in 'B' or not is stored in 'A_Contain_B'.
# Complement of 'A' is represented by 'A_Comp'.
# 'B' intersection 'D' is represented by 'B_inter_D'.
# 'A' union 'C' is represented by 'A_union_C'.
# 'B' intersection 'C' is represented by 'B_inter_C'.
# Complement of 'B' union 'C' is represented by 'B_union_C_comp'.
# Intersection of 'A' and 'B' union 'C' is represented by 'A_inter_B_union_C'.

# "union" and "intersect" functions are being used for operating on sets. 
# For description of these functions, type ?union and ?intersect in the console.

A_Contain_B<-B%in%A
A_Comp<-S[!S%in%A]
B_inter_D<-intersect(B,D)
A_union_C<-union(A,C)
B_inter_C<-intersect(B,C)
B_union_C_comp<-S[!S%in%(union(B,C))]
A_inter_B_union_C<-intersect(A,union(B,C))

print(A_Contain_B)
print(A_Comp)
print(B_inter_D)
print(A_union_C)
print(B_inter_C)
print(B_union_C_comp)
print(A_inter_B_union_C)