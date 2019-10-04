x=c(11.0,11.2,11.2,11.2,11.4,11.5,11.6,11.7,11.8,11.9,11.9,12.1,10.2,10.3,10.4,10.6,10.6,10.7,10.8,10.8,10.9,11.1,11.1,11.3)
y=rank(x)
cbind(x,y)
rep(table(y), table(y))
n1=12
n2=12
mut=n1*(n1+n2+1)/2
s=((n1*n2)/12)*((n1+n2+1)-(48/((n1+n2)*(n1+n2-1))))
sigmat=sqrt(s)
T=216 # sum of ranks of before clean up values
Z=(T-mut)/sigmat
Z
# This value exceeds 1.645, so we reject H0 and conclude that the distribution of before-cleanup measurements is shifted to the right of the corresponding distribution of after-cleanup measurements
# part b
si=(n1*n2*(n1+n2+1))/n1
sqrt(si)
