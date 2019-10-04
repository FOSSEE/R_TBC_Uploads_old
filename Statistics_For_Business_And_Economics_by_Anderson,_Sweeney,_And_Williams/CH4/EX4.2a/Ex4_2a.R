                                       # Page no. : 161

# Probability of an Event

# C denotes the event that is completed in 10 months or less

C <- c(list(c(2,6)), list(c(2,7)), list(c(2,8)), list(c(3,7)), list(c(3,8)), list(c(4,6)))
prob <- c(0.15,0.15,0.05,0.10,0.20,0.05)

dataset <- data.frame(I(C),prob)

event <- sum(dataset$prob)

# P(C) = P(2,6) + P(2,7) + P(2,8) + P(3,7) + P(3,8) + P(4,6) 

cat("Probability of an event P(C) is",event)

# L denotes the event that is completed in less than 10 months

L <- c(list(c(2,6)), list(c(2,7)), list(c(3,7)))
prob <- c(0.15,0.15,0.10)

dataset <- data.frame(I(L),prob)

# P(L) = P(2,6) + P(2,7) + P(3,7) 

event2 <- sum(dataset$prob)

cat("Probability of an event P(L) is",event2)

# M denotes the event that is completed in more than 10 months

M <- c(list(c(3,8)), list(c(4,7)), list(c(4,8)))
prob <- c(0.05,0.10,0.15)

dataset <- data.frame(I(M),prob)

# P(M) = P(3,8) + P(4,7) + P(4,8) 

event3 <- sum(dataset$prob)

cat("Probability of an event P(L) is",event3)