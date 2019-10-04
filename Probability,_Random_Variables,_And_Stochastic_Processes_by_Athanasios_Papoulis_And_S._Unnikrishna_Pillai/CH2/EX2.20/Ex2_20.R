#page no. 39-40
#example 2-20

N=365    #number of days in one year

    #PART (a)


n=23     #group of people 
p=1-exp((-n*(n-1))/(2*N))

cat("In a group of 23 people it gives probability of at least one match to be",p)

n=50
p=1-exp((-n*(n-1))/(2*N))
cat("in a group of 50 person, the probability of birthday match is ",p)
#answer in the book is 0.97 which is due to approximation 


    #PART (b)



n=253
p_personal=1-exp(-n/N)    #probability of personal match 
print("For a modest 50-50 chance in this case the group size needs to be about 253 ")

#if n=1000
n=1000
p_personal=1-exp(-n/N)

cat("In a group of 1000 people, chances are about ",p_personal*100,"% that there will be someone sharing your birthday")
