weight<-c(210,234,216,232,262,183,227,197,
248,218,256,218,244,259,263,185,
218,196,235,223,212,237,275,240,
217,263,240,247,253,269,231,254,
248,261,268,262,247,292,238,215)
n=40#Total Box
xbar=mean(weight)
s=sd(weight)
K = 2.125#for95% of confidence and n=40
L=xbar-K*s
L
cat("there for We are 95% confident that at least a proportion 0.95 of the population of burst
strengths, for cardboard boxes, is above 183 psi")