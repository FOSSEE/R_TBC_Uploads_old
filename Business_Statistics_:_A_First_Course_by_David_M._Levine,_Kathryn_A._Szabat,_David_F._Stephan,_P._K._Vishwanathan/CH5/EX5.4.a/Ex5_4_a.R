#computing Binomial probablities
p3<- dbinom(3,size=3,prob=0.868)
p3
p0<- dbinom(0,size=3,prob=0.868)
p0
p2<- dbinom(2,size=3,prob=0.868)
p2
#probablity of atleast two tagged form is
# p(X>=2) = P(X=2) + P(X=3)
p_atleast_2 <- p2+p3
round(p_atleast_2,digits=4)

