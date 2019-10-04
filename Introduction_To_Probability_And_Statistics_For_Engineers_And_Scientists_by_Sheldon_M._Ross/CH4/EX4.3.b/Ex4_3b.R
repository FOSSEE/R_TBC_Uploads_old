#install.packages("IPSUR")
#install.packages("prob")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)
#install.packages("combinat")
library(combinat)
library(discreteRV)
'
library(discreteRV)
d<-RV(c("Boy","Girl"),odds=c(0.5,0.5))
e<-RV(c("0","1","2","3"),odds = c(0.15,0.20,0.35,0.3))
f<-joint(d,e)
probs(f)
'

#P{B=0,G=0} = P{no children}
P = .15
P
#P{B=0,G=1} = P{1 Girl and total of 1 child}  = P{1 child} P{1 girl | 1 child}
P = .20 * (1/2)
P
#P{B=0,G=2} = P{2 Girls and total of 2 children}  = P{2 children} P{2 girls | 2 children}
P = .35*(1/2)^2
P
#P{B=0,G=3} = P{3 Girls and total of 3 children}  = P{3 children} P{3 girls | 3 children}
P = .3*(1/2)^3
P
#P{B=1,G=0} = P{1 Boy and total of 1 child}  = P{1 child} P{1 boy | 1 child}
P = .2*(1/2)
P
#P{B=1,G=1} = P{1 Boy, 1Girl and total of 2 children}  = P{2 children} P{1 boy | 2 children}
P = .35*.5
#P = .35*((1/2)^2+(1/2)^2)
P
#P{B=1,G=2} = P{1 Boy, 2Girls and total of 3 children}  = P{2 children} P{2 Girls | 2 children + 1 boy|1 child}
P = .3*((1/2)^3+(1/2)^2)
P