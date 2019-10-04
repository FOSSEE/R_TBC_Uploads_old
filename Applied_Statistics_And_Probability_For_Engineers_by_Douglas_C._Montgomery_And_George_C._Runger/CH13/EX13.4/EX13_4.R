
#Textile Manufacturing(Pg no. 560)
obs1 = c(98,91,96,95)
obs2 = c(97,90,95,96)
obs3 = c(99,93,97,99)
obs4 = c(96,92,95,98)

data = rbind(obs1,obs2,obs3,obs4)

tag = c("obs1","obs2","obs3","obs4")

M = c(t(as.matrix(data)))
n_row = 4
n_col = 4

op <- gl(n_row,1,n_col*n_row,factor(tag))

m <- gl(n_col,n_row,n_row*n_col)

summary(aov(M~op+m))
