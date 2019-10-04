
data <- c(1,2,3,8,9,10,25)

clu1 <- c(1,2,3)

clu2 <- c(8,9,10,25)


Mean_clu1 <- mean(clu1)

Mean_clu2 <- mean(clu2)


su_mean1 <- sum((clu1-Mean_clu1)^2)

su_mean2 <- sum((clu2-Mean_clu2)^2)


First_Total<-su_mean1+su_mean2 

print("Variation within first partition")

print(First_Total)




print("##################################################")



data <- c(1,2,3,8,9,10,25)

clu3 <- c(1,2,3,8)

clu4 <- c(9,10,25)


Mean_clu3 <- mean(clu3)

Mean_clu4 <- mean(clu4)


su_mean3 <- sum((clu3-Mean_clu3)^2)

su_mean4 <- sum((clu4-Mean_clu4)^2)


sec_Total<-su_mean3+su_mean4 

print("Variation within second partition")

print(sec_Total)
