a <- c(.6,.7,.9,.5)
B <- c(.9,1.1,1.3,.7)
c <- c(.8,.7,1.0,.8)
d <- c(.7,.8,1.0,.6)
e <- c(.5,.5,.7,.4)
f <- c(.6,.5,.8,.6)
g <- c(a,B,c,d,e,f)
rank_a <- c(2.5,3.5,3,2)
rank_b <- c(6,6,6,5)
rank_c <- c(5,3.5,4.5,6)
rank_d <- c(4,5,4.5,3.5)
rank_e <- c(1,1.5,1,1)
rank_f <- c(2.5,1.5,2,3.5)
t1 <- sum(rank_a)
t2 <- sum(rank_b)
t3 <- sum(rank_c)
t4 <- sum(rank_d)
t5 <- sum(rank_e)
t6 <- sum(rank_f)
k <- 6
b <- 4
fr <-  12 / (b * k * (k + 1)) * (t1 * t1 + t2 * t2 + t3 * t3 + t4 * t4 + t5 * t5 + t6 * t6 ) - (3 * b * (k + 1))
fr
df <-  k - 1
alpha <- 0.05
x_square <- qchisq(1 - alpha, 5)    #sampling distribution of fr
if(fr > x_square){
  print("reject null hypothesis, so the distribution of reaction times differ in location  for at least two stimuli")
}else{
  print("accpept the null hypothesis ")
}
