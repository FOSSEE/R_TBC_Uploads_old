
y <- c(41, 39, 47, 51, 43, 40, 57, 46, 50, 59, 61, 52)
x<- c( 24 ,30 ,33 ,35 ,36 ,36 ,37 ,37 ,38 ,40 ,43 ,49)

# Apply the lm() function.
relation <- lm(y~x)

print(summary(relation))
cor(y,x)
# For all 12 observations, the output shows a correlation coefficient of .646
# after subseting x>=37

y1 <- c(  57, 46, 50, 59, 61, 52)
x1<- c(  37 ,37 ,38 ,40 ,43 ,49)
# Apply the lm() function.
relation <- lm(y1~x1)
print(summary(relation))
 cor(y1,x1)
# For  subset having x greater than or equal to 37, the output shows a correlation coefficient of .188
 