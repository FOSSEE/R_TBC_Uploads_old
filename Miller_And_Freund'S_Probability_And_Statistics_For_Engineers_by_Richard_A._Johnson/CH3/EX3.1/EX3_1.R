library(sets)#To import the library for set
s=set(pair(0,0),pair(0,1),pair(1,0),pair(2,0),pair(1,1),pair(0,2))#Sample space
s
C=set(pair(1,0),pair(0,1.0))
C
D=set(pair(0,0),pair(0,1),pair(0,2))
D
E=set(pair(0,0),pair(1,1))
E
#Union of the Sets
set_union(C,E)
#Intersection of the set
cset_intersection(C,D)
#Complement of the set
set_complement(D,s)
