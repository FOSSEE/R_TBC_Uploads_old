#Chapter 4- Vector Spaces
#Column space of a matrix
#Page No.128 / 4-8
#Prob 13
#4.3.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(1,0,6,5,0,0,2,5,3,0,0,0,0,0,0)
a=matrix(av,3,5,TRUE)
p=a
print('A=')
print(a)
print('Reducing A to echelon form')
print('R2=R2/2')
a[2,]=a[2,]/2
print(a)
print('the pivot columns are column 1 and 2 of A')
print('x1=-6x3-5x4')
print('x2=-(5/2)x3-(3/2)x4')
print('x3 and x4 are free')
print('x3[-6 -5/2 1 0] + ')
print('x4[-5 -3/2 0 1]')
print('the standard choice is (-6,-5/2,1,0)')
print('and (-5,-3/2,0,1) ')
print('Another choice is ')
print('(-12,-5,2,0) ')
print('and (-10,-3,0,2) ')
print('which avoids fractions')