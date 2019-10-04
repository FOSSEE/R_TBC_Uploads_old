                                    # Page no. : 736 - 738

# Analysis of a Large Problem

Sales <- c(3669.88, 3473.95, 2295.10, 4675.56, 6125.96, 2134.94, 5031.66, 3367.45, 6519.45, 
           4876.37, 2468.27, 2533.31, 2408.11, 2337.38, 4586.95, 2729.24, 3289.40, 2800.78, 
           3264.20, 3453.62, 1741.45, 2035.75, 1578.00, 4167.44, 2799.97)
Time <- c(43.10, 108.13, 13.82, 186.18, 161.79, 8.94, 365.04, 220.32, 127.64, 105.69, 57.72, 23.58, 
          13.82, 13.82, 86.99, 165.85, 116.26, 42.28, 52.84, 165.04, 10.57, 13.82, 8.13, 58.44, 
          21.14)
Poten <- c(74065.1, 58117.3, 21118.5, 68521.3, 57805.1, 37806.9, 50935.3, 35602.1, 46176.8, 42053.2,
           36829.7, 33612.7, 21412.8, 20416.9, 36272.0, 23093.3, 26878.6, 39572.0, 51866.1, 58749.8,
           23990.8, 25694.9, 23736.3, 34314.3, 22809.5)
AdvExp <- c(4582.9, 5539.8, 2950.4, 2243.1, 7747.1, 402.4, 3140.6, 2086.2, 8846.2, 5673.1, 2761.8,
            1991.8, 1971.5, 1737.4, 10694.2, 8618.6, 7747.9, 4565.8, 6022.7, 3721.1, 861.0, 3571.5,
            2845.5, 5060.1, 3552.0)
Share <- c(2.51, 5.51, 10.91, 8.27, 9.15, 0.15, 8.54, 7.07, 12.54, 8.85, 5.38, 5.43, 8.48, 7.80,
           10.34, 5.15, 6.64, 5.45, 6.31, 6.35, 7.37, 8.39, 5.15, 12.88, 9.14)
Change <- c(0.34, 0.15, -0.72, 0.17, 0.50, 0.15, 0.55, -0.49, 1.24, 0.31, 0.37, -0.65, 0.64, 1.01,
            0.11, 0.04, 0.68, 0.66, -0.10, -0.03, -1.63, -0.43, 0.04, 0.22, -0.74)
Accounts <- c(74.86, 107.32, 96.75, 195.12, 180.44, 104.88, 256.10, 126.83, 203.25, 119.51, 116.26,
              142.28, 89.43, 84.55, 119.51,80.49, 136.58, 78.86, 136.58, 138.21, 75.61, 102.44,
              76.42, 136.58, 88.62)
Work <- c(15.05, 19.97, 17.34, 13.40, 17.64, 16.22, 18.80, 19.86, 17.42, 21.41, 16.32, 14.51,
          19.35, 20.02, 15.26, 15.87, 7.81, 16.00, 17.44, 17.98, 20.99, 21.66, 21.46, 24.78,
          24.96)
Rating <- c(4.9, 5.1, 2.9, 3.4, 4.6, 4.5, 4.6, 2.3, 4.9, 2.8, 3.1, 4.2, 4.3, 4.2, 5.5, 3.6, 3.4,
            4.2, 3.6, 3.1, 1.6, 3.4, 2.7, 2.8, 3.9)

DF <- data.frame(Sales, Time, Poten, AdvExp, Share, Change, Accounts, Work, Rating)
View(DF)

library(corrplot)

matrix <- round(cor(DF), 3)
matrix

regressor <- lm(Sales ~ Time + Poten + AdvExp + Share + Change + Accounts + Work + Rating,
                data = DF)
summary(regressor)

cat("Equation is Sales = ",regressor$coefficients[1],"+",regressor$coefficients[2],"Time +",
    regressor$coefficients[3],"Poten +",regressor$coefficients[4],"AdvExp +",regressor$coefficients[5],
    "Share +",regressor$coefficients[6],"Change +",regressor$coefficients[7],"Accounts +",
    regressor$coefficients[8],"Work +",regressor$coefficients[8],"Rating")

# Book Answer is different

regressor2 <- lm(Sales ~ Poten + AdvExp + Share, data = DF)
summary(regressor2)

cat("Equation is Sales = ",regressor2$coefficients[1],"+",regressor2$coefficients[3],"Poten +",
    regressor2$coefficients[4],"AdvExp +",regressor2$coefficients[5],
    "Share")

# Book Answer is different