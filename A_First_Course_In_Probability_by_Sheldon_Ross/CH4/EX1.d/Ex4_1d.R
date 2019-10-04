#Chapter 4, Random Variables
#Example 1d, Page-119

#P[i] denotes P(X=i)

P <- rep(4)

P[0] <- (choose(5,3) + choose(3,1)*choose(3,1)*choose(5,1))/choose(11,3)

P[1] <- (choose(3,1)*choose(5,2) + choose(3,2)*choose(3,1))/choose(11,3)

P[2] <- (choose(3,2)*choose(5,1))/choose(11,3)

P[3] <- choose(3,3)/choose(11,3)

print(sum(P))
