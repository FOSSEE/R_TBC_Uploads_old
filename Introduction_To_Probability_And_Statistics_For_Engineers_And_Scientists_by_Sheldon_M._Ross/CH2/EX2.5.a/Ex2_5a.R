data<-c(90, 91 ,94 ,83 ,85 ,85 ,87 ,88 ,72, 74, 74, 75, 77, 77, 78, 60, 62 ,63, 64, 66, 66, 52 ,55 ,55 ,56 ,58 ,43, 46)
cat("According to the empirical rule 68% of the data lies between",mean(data)-sd(data),"and",mean(data)+sd(data))
cat("95% of the data lies between",mean(data)-(2*sd(data)),"and",mean(data)+(2*sd(data)))
cat("99.7% of the data lies between", mean(data)-(3*sd(data)),"and",mean(data)+(3*sd(data)))