#Chapter 3- Determinants
#Determinant of a matrix
#Page No.112 / 3-6
#Prob 19
#3.2.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
print('A=')
print(' a       b       c')
print('2d+a    2e+b    2f+c')
print(' g       h       i')
print('B=')
print('a  b  c')
print('d  e  f')
print('g  h  i')
print('given, det(B)=7')
print('performing row operations on A')
print('R2=R2-R1')
print('A=')
print('a   b   c')
print('2d  2e  2f')
print('g   h   i')
print('factoring 2 out of row 2')
print('A=')
print('2 X')
print('a  b  c')
print('d  e  f')
print('g  h  i')
print('therefore, det(A)=2 X det(B)')
print('=2 X 7')
print('= 14')