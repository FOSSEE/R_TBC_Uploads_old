# Regression Trend Analysis Using Quadratic Models

Year <- c(1991:2007)
Labour_force <- c(117.72,118.49,120.26,123.06,124.90,126.71,129.56,131.46,133.49,136.89,136.93,136.49,137.74,139.25,141.73,144.43,146.05)
Year_sq <- Year^2
Year <- data.frame(Year,Labour_force,Year_sq)
Year
a <-lm(Labour_force~Year,data=Year)
a
anova(a)
ggplot(data = Year,aes(x=Year,y=Labour_force))+geom_point()+geom_smooth(method = "lm")

b <-lm(Labour_force~.,data=Year)
b
anova(b)
ggplot(data = Year,aes(x=Year_sq,y=Labour_force))+geom_point()+geom_smooth(method = "lm")