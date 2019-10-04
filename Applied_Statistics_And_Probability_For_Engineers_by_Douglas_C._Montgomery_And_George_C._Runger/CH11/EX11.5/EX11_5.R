#Oxygen Purity Confidence Interval on the Mean Response(Pg no. 448)

x = c(0.99,1.02,1.15,1.29,1.46,1.36,0.87,1.23,1.55,1.40,1.19,1.15,0.98,1.01,1.11,1.20,1.26,1.32,1.43,0.95)
y = c(90.01,89.05,91.43,93.74,96.73,94.45,87.59,91.77,99.42,93.65,93.54,92.52,90.56,89.54,89.85,90.39,93.25,93.41,94.98,87.33)
df = data.frame('y' = y, 'x' = x)
model = lm(y~x, data = df)

ans = predict(model,data.frame(x = 1),interval = "confidence")
cat("prediction of mean oxygen purity when x0 = 1.00% is",ans[1])

min = ans[2]
max = ans[3]

cat(round(min, digits = 2),"<= u <=",round(max, digits = 2))

# The answer may slightly vary due to rounding off values 