#page no.409
#problem 20
#formula used: an = ar^(n-1)
#function:
find_r = function(an,a,n) #function to find common ratio
  {return((an/a)**(1/(n-1)))}
#given:
a = 12 #first term of GP
a5 = 55 #5th term of GP (ar^4)
n = 5 #fith term given
r = find_r(a5,a,n)  #common ratio

#part(a)
a8 = a*r^7
print(a8)
#part(b)
a11 = a*r^10
print(a11)