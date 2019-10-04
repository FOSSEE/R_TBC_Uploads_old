no_breakfast<-c(8,7,9,13,10)
light_breakfast<-c(14,16,12,17,11)
full_breakfast<-c(10,12,16,15,12)

k <- 3;
n1 <- n2 <- n3 <- 5
n <- 15;


sum_square_X <- sum(no_breakfast) + sum(light_breakfast) + sum(full_breakfast)
cm <- (sum_square_X * sum_square_X)/n
cm
x <- sum(no_breakfast)
y <- sum(light_breakfast)
z <- sum(full_breakfast)
total_ss <- (8*8 + 7*7 + 9*9 + 13*13 + 10*10 + 14*14 + 16*16 + 12*12 + 17*17 + 11*11 + 10*10 + 12*12 + 16*16 + 15*15 + 12*12 ) - cm
total_ss
degree_of_freedom <- n-1
degree_of_freedom
sst <- ((x*x + y*y + z*z)/5) - cm
sst
df <- k - 1
sse  <- total_ss -sst
sse
deg_of_freedom <- n - k
deg_of_freedom

combined<-data.frame(cbind(no_breakfast,light_breakfast,full_breakfast))
stacked<-stack(combined)
stacked
Anova_Results<-aov(values ~ ind,data = stacked)
summary(Anova_Results)
