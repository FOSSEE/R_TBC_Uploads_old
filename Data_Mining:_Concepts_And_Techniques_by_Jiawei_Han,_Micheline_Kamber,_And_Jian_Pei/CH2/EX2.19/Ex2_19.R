
x1 <- c(1,2)

x2 <- c(3,5)

dif <- x2-x1

Euclidean<- sqrt(sum(dif^2))
print("Euclidean distance")
print(Euclidean)


print("Manhattan Distance")
Manhattan <- sum(dif)

print(Manhattan)