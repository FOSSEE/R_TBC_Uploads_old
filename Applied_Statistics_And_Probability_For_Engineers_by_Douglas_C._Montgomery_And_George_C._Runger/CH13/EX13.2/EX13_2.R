#(Pg no. 549)

obs1 = c(7,12,14,19)
obs2 = c(8,17,18,25)
obs3 = c(15,13,19,22)
obs4 = c(11,18,17,23)
obs5 = c(9,19,16,18)
obs6 = c(10,15,18,20)

M = matrix(c(obs1,obs2,obs3,obs4,obs5,obs6), nrow = 4, ncol = 6, byrow = FALSE)

sum_row1 = sum(M[1,])
sum_row2 = sum(M[2,])
sum_row3 = sum(M[3,])
sum_row4 = sum(M[4,])
a = 4
n = 6
MSe = 6.51
t = qt(0.025,20,lower.tail = FALSE)
t
y1 = sum_row1/n
y2 = sum_row2/n
y3 = sum_row3/n
y4 = sum_row4/n

LSD = t*(sqrt((2*MSe)/n))
LSD

cat("4 vs 1 =",y4-y1,">",LSD)
cat("4 vs 2 =",y4-y2,">",LSD)
cat("4 vs 3 =",y4-y3,">",LSD)
cat("3 vs 1 =",y3-y1,">",LSD)
cat("3 vs 2 =",y3-y2,">",LSD)
cat("2 vs 1 =",y2-y1,">",LSD)
         