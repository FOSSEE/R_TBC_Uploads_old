# Model Transformation : y = B0*x_B1 + E

y_cost <- c(1.2,9.0,4.5,3.2,13.0,0.6,1.8,2.7)
x_weight <- c(450,20200,9060,3500,75600,175,800,2100)
y_cost <- data.frame(y_cost,x_weight)
y_cost

# logy = log_B0 + B1*logx + E
log_xy <- log10(y_cost)
log_xy

a <-lm(y_cost~x_weight,data=log_xy)
a
b <-summary(a)
b

b0 <- b$coefficients[1]
b0
b1 <- b$coefficients[2]
b1

logy_c = b0 + b1 * (sum(log_xy$x_weight)/8)
logy_c

# antilog = 2.9644
# y = (.055857)*x^.49606

