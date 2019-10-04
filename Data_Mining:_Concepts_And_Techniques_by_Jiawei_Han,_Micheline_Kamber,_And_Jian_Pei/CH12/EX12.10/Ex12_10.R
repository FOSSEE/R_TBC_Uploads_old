
library(outliers)

dataset <- c(24,28.9,28.9,29,29.1,29.1,29.2,29.2,29.3,29.4)
chisq.out.test(dataset )
print(chisq.out.test(dataset, opposite=TRUE))

