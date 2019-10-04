#EX_1_18
#page34
number_flips <- 100
# created coin object with head and tail
coin <- c("heads","tails")
#simulating the flip of the object coin
flips <- sample(coin, size=number_flips, replace= TRUE)
#probability of getting head if we specify that head and tail is equally likely
dbinom(1, size=1, prob=0.5)
#total probability of head and tail
dbinom(1, size=1, prob=0.5)#p(H1|D)
dbinom(1, size=1, prob=0.5)#p(H2|D)
