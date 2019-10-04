#Oxygen purity(Pg no. 433)

x = c(0.99,1.02,1.15,1.29,1.46,1.36,0.87,1.23,1.55,1.40,1.19,1.15,0.98,1.01,1.11,1.20,1.26,1.32,1.43,0.95)
y = c(90.01,89.05,91.43,93.74,96.73,94.45,87.59,91.77,99.42,93.65,93.54,92.52,90.56,89.54,89.85,90.39,93.25,93.41,94.98,87.33)
df = data.frame('y' = y, 'x' = x)
model = lm(y~x, data = df)

cat("The fitted simple linear regression model is y = ",round(model$coefficients[1],digits = 3),"+",round(model$coefficients[2],digits = 3),"x")