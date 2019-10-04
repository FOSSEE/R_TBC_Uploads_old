options(scipen = 999) #for disabling scientific notation

#(Pg no. 121)

#P(X > 1.26)
p1 = 1 - pnorm(1.26,0,1)
cat("P(X>1.26) =",p1)

#P(X < 20.86)
p1 = pnorm(20.86,0,1)
cat("P(X<20.86) =",p1)

#P(X > -1.37) = P(X < 1.37)
p1 = pnorm(1.37,0,1)
cat("P(X>-1.37) =",p1)

#P(-1.25 < X < 0.37)
pmin = pnorm(0.37,0,1)
pmax = pnorm(-1.25,0,1)
cat("P(-1.25 < Z < 0.37) =",pmin-pmax)

#P(X <= -4.6)
p = pnorm(-3.99,0,1)
cat("Since P(X<=-3.99) =",round(p, digits = 6),"and P(X<= − 4.6) < P(X<= − 3.99) P(X <= -4.6) almost equal to zero")
#the answer given in textbook is wrong for P(X < 20.86)
