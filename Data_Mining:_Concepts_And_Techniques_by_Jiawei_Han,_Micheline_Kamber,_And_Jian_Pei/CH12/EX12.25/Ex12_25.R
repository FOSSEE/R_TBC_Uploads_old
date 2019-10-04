

###install.packages("abodOutlier")


library(abodOutlier)

data(iris)

Abodf<- abod(iris[,1:4], method = "randomized", n_sample_size = 5)


View(Abodf)
