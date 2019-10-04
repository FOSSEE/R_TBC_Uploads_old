#install.packages("IPSUR")
#install.packages("prob")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)

#First we set up the sample space with the rolldie function
S <- rolldie(2, makespace = TRUE)
#Next, we add random variables U and V with the addrv function.
S <- addrv(S, FUN = max, invars = c("X1", "X2"), name = "U")
S <- addrv(S, FUN = sum, invars = c("X1", "X2"), name = "V")
head(S)
UV <- marginal(S, vars = c("U", "V"))
xtabs(round(probs, 3) ~ U + V, data = UV)
marginal(UV, vars = "U")
marginal(UV, vars = "V")

temp <- xtabs(probs ~ U + V, data = UV)
rowSums(temp)
colSums(temp)
colSums(temp)

'
data = sample(1:6,10000000,replace=TRUE)+sample(1:6,10000000,replace=TRUE)
table(data)/length(data)
sum(table(data)/length(data))

table(sample(1:6,10000000,replace=TRUE))/length(sample(1:6,10000000,replace=TRUE))
'