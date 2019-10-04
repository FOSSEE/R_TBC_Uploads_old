x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)
r_sq <- summary(line)$r.squared
cat(" the sample variability of the peak load about their mean is reduced by ",r_sq*100," when the mean peak loads
    is modeled as a linear function of daily high temperature")
