                                        # Page no. : 605

# Worked out examples 1 and 2

group_A <- c(15, 4, 12, 14)
group_B <- c(21, 16, 49, 17)
group_C <- c(18, 19, 11, 22)

sq_root1 <- round(sqrt(group_A), 2)   # Square root of group A
sq_root2 <- round(sqrt(group_B), 2)   # Square root of group B
sq_root3 <- round(sqrt(group_C), 2)   # Square root of group C

DF <- data.frame(sq_root1, sq_root2, sq_root3)
View(DF)

DF2 <- data.frame( Groups = rep(c("Group A", "Group B", "Group C"), each = 4),
                  Values = c(group_A, group_B, group_C)
                  )

Rank <- rank(DF2$Values)
DF2 <- cbind(DF2, Rank)

View(DF2)