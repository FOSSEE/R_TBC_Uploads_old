#page no. 405
#problem 10
#function:
term = function(a,n,d) # to find term value
{
  return(a+((n-1)*d)) 
}
#given:
a6 = 17 #6th term of sequence---->(a+5d=17)
a13 = 38 #13th term of sequence---->(a+12d=38)

# using matrix method X=A(inverse)*B
# we will find a(first value) and d(common difference) values

A = array(data = c(1,1,5,12),dim = c(2,2))
B = c(17,38)
X = solve(A,B) # calculating a and d
a = X[1] #first number of sequence
d = X[2] # common difference of AP(airthmetic progression)
a19 = term(a,19,d) # n = 19, to find 19th term of sequence
print(a19)