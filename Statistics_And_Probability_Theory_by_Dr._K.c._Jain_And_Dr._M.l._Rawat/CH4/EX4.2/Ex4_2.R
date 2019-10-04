#Example 2 Chapter 4 page no.167
n=5
x=c(0:n)
f=c(2,14,20,34,22,8)
mean=sum(x*f)/sum(f)
p=mean/n
q=1-p
data.frame(x,sum(f)*dbinom(x,n,p))
#this dataframe shows the frequency in binomial distribution