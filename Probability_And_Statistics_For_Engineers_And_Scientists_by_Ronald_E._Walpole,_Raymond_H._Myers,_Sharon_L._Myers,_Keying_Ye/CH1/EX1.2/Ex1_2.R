# Chapter 1
# Example 1.2 page no, 4 from the Pdf..
# To plot the Dotplot for the above data..
# package used "ggplot2" if not installed can be done using install.packages("ggplot2")

library(ggplot2)  

obs <- c(0.32,0.53,0.28,0.37,0.47,0.43,0.36,0.42,0.38,0.43,0.26,0.43,0.47,0.49,0.52,0.75,0.79,0.86,0.62,0.46)

cat <- c(rep("no_nit",10),rep("nit",10))

data1 <- data.frame(obs,cat)  # making it a data frame.

data1$f <- factor(data1$obs)   # adding another variable to the data frame.

# Plot..
ggplot(data1,aes(x = f, y = obs, fill = cat)) + geom_dotplot(binaxis = 'y',stackdir = 'center')



