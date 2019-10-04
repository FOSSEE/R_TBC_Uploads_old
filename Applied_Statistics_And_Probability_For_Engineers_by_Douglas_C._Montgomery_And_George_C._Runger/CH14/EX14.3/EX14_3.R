#Epitaxial Process(Pg no. 596)

obs1 = c(14.037,14.165,13.972,13.907)
obs2 = c(14.821,14.757,14.843,14.878)
obs3 = c(13.880,13.860,14.032,13.914)
obs4 = c(14.888,14.921,14.415,14.932)

M = matrix(c(obs1,obs2,obs3,obs4), nrow = 4, ncol = 4, byrow = TRUE)

sum_y_sqr = sum(M^2)

init = sum(M[1,])
a = sum(M[2,])
b = sum(M[3,])
ab = sum(M[4,])

n = 4
N = 16

A = (1/(2*n)) * (a+ab-b-init)
B = (1/(2*n)) * (b+ab-a-init)
AB = (1/(2*n)) * (ab+init-a-b)
SSa = ((a+ab-b-init)^2)/N
SSa
SSb = ((b+ab-a-init)^2)/N
SSb
SSab = ((ab+init-a-b)^2)/N
SSab
SSt = sum_y_sqr - ((init+a+b+ab)^2)/N
SSt