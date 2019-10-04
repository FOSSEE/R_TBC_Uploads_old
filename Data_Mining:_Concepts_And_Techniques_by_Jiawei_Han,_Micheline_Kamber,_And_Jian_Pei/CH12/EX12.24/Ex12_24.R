library(HighDimOut)
library(ggplot2)

result_SOD <- Func.SOD(data = iris[,1:4], k.nn = 10, k.sel = 5, alpha = 0.8)

plot(result_SOD)

