#page no. 103-105
#example 4-19

k=6  #number of heads 
n=10 #number of specific tosses 
p_B=(k+1)/(n+2)
print(p_B)

#this example shows that if the probability density function of a random variable x is unknown, one should make 
#noncommittal judgement about its a priori probability density function  f(x). Usually, the uniform distribution 
#is a reasonable assumption in the absence of any other information. then experimental results (A) are obtained 
#and the knowledge about x is updated reflecting this new information. Bayes' rule helps to obtain the a posteriori
#probability density function of x given A. From that point on, this a posteriori probability density functin f(x|A)
#should be used to make further predictions and calculations 