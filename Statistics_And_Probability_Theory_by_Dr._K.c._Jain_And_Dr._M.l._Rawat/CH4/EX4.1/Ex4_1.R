#Example 1 Chapter 4 page no.167
n=10
x=c(0:10)
f=c(6,20,28,12,8,6,0,0,0,0,0)
mean=sum(x*f)/sum(f)
p=mean/n
q=1-p
data.frame(x,sum(f)*dbinom(x,n,p))
#this dataframe shows the frequency in binomial distribution