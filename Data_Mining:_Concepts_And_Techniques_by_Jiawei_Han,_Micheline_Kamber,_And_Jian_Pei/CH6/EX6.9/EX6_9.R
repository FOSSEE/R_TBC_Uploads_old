library(arules)
Video <- c(4000,2000,3500,500)
Video_game <-c(4500,1500,3000,1000)

cor <- sum((Video-Video_game)^2/Video_game)


print(cor)





