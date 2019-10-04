x =c(139,10898,11037,239,10795,11034,378,21693,22071)

m <- matrix(x,byrow = TRUE,nrow = 3)
rownames(m) <- c("Aspirin","Placebo","Total")
colnames(m) <- c("MI","NoMI","Total")

cat("For the aspirin group, the odds in favor of M.I. are ",m["Aspirin","MI"]/m["Aspirin","NoMI"])

cat("For the placebo group, the odds in favor of M.I. are",m["Placebo","MI"]/m["Placebo","NoMI"])

cat("Odds ratio= ",(m["Aspirin","MI"]/m["Aspirin","NoMI"]) /(m["Placebo","MI"]/m["Placebo","NoMI"]) )
