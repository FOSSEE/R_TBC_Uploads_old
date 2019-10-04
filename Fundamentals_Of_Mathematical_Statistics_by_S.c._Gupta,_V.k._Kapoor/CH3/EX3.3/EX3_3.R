#Page number--3.8
#Example number--3.3

# Part(a)
N=5*4
sprintf("Total number of cases: %d",N)
#Part(i)
# there are 12 cases--->(1,2),(1,3),(1,4),(1,5),(3,1),(3,2),(3,4),(3,5),(5,1),(5,2),(5,3),(5,4)
a=12/20
sprintf("Probability that the first digit drawn is odd: %f",a)
#Part(ii)
# there are 12 cases--->(2,1),(3,1),(4,1),(5,1),(1,3),(2,3),(4,3),(5,3),(1,5),(2,5),(3,5),(4,5)
b=12/20
sprintf("Probability that the second digit drawn is odd: %f",b)
#Part(iii)
# there are 6 cases--->(1,3),(1,5),(3,1),(3,5),(5,1),(5,3)
c=6/20
sprintf("Probability that the first and second digit drawn are odd: %f",c)

# Part(b)
n=25
#Number which are multiple of 5-----> 5,10,15,20,25
d.f.c= 5+3   	# Distinct favourable cases
d=d.f.c/n
sprintf("Required Probability: %f",d)

#Number which are multiple of 3-----> 3,6,9,12,15,18,21,24
d.f.c= 8+3-1	# Distinct favourable cases
e=d.f.c/n
sprintf("Required Probability: %f",e)


