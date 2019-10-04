#Fabric Strength(Pg no. 565)

obs1 = c(1.3,2.2,1.8,3.9)
obs2 = c(1.6,2.4,1.7,4.4)
obs3 = c(0.5,0.4,0.6,2.0)
obs4 = c(1.2,2.0,1.5,4.1)
obs5 = c(1.1,1.8,1.3,3.4)

data = rbind(obs1,obs2,obs3,obs4,obs5)

tag = c("obs1","obs2","obs3","obs4","obs5")

M = c(t(as.matrix(data)))
n_row <- 4
n_col <- 5

op <- gl(n_row,1,n_col*n_row,factor(tag))

m <- gl(n_col,n_row,n_row*n_col)


summary(aov(M~op+m))

# The answer may slightly vary due to rounding off values