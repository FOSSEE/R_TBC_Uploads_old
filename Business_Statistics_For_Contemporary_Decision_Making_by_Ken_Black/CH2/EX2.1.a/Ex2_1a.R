# Class midpoints.

Interest_rate <- c(7.29,7.23,7.11,6.78,7.47,6.69,6.77,6.57,6.80,6.88,6.98,7.16,
                   7.30,7.24,7.16,7.03,6.90,7.16,7.40,7.05,7.28,7.31,6.87,7.68,
                   7.03,7.17,6.78,7.08,7.12,7.31,7.40,6.35,6.96,7.29,7.16,6.97,
                   6.96,7.02,7.13,6.84)

summary(Interest_rate)

low_val<- 6.30
high_val <-7.70
step_val <- 0.20
x_breaks <- seq(low_val,high_val,step_val)
x_breaks
x_mid <- seq(low_val+step_val/2,high_val-step_val/2,step_val)
x_mid
x<-cut(Interest_rate,breaks = x_breaks,right=FALSE)
x
y<-table(x)
y

df <- data.frame(y)
df

# Class Mid point :
df$midpoint <- x_mid
View(df)

