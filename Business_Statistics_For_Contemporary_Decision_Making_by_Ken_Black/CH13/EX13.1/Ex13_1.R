#  Multiple Regression Model:

Year <- c(1980,1982,1984,1986,1988,1990,1992,1994,1996,1998,2000,2002,2004,2006,2008)
Prime_Interest_rate <- c(15.26,14.85,12.04,8.33,9.32,10.01,6.25,7.15,8.27,8.35,9.23,4.67,4.34,7.96,5.09)
Unemp_rate <- c(7.1,9.7,7.5,7.0,5.5,5.6,7.5,6.1,5.4,4.5,4.0,5.8,5.5,4.6,5.8)
Personal_saving <- c(10.0,11.2,10.8,8.2,7.3,7.0,7.7,4.8,4.0,4.3,2.3,2.4,2.1,0.7,1.8)
df <- data.frame(Year,Prime_Interest_rate,Unemp_rate,Personal_saving)
df

a <-lm(Prime_Interest_rate ~ Unemp_rate+Personal_saving,data=df)
a
summary(a)
anova(a)

# y_cap = 7.4904 - 0.6725x1 + 0.9500x2
# If the unemployment rate is 6.5 and the personal saving rate is 5.0, 
# the predicted prime interest rate is 7.869%:
x1 = 6.5
x2 = 5.0
y_cap = 7.4904 - (0.6725)*(x1) + (0.9500)*(x2) 
y_cap

