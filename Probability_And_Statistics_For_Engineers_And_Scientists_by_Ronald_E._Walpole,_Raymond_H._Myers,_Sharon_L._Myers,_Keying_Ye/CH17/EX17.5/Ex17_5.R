
# Chapter 17
# Examples 17.5 page no.702 from the pdf..
# Control Charts for Defects C chart..

# given - no. of defects in 20 successive samples of sheet metal rolls each 100 feet long.
# to develop a control chart.

# package used - qicharts2
# if not installed can be installed by install.packages("qicharts2")

library(qicharts2)

lambd <- 5.95

num_def <- c(8,7,5,4,4,7,6,4,5,6,3,7,5,9,7,7,8,6,7,4)

samples <- c(1:20)

dat <- data.frame(samples, num_def)

# C control chart for the above preliminary data.
qic(num_def,
    x = samples,
    chart = 'c',
    xlab = 'Sample',
    ylab = 'Number of defects',
    data = dat)

cat("The UCL and LCL for the above preliminary data are",lambd+3*sqrt(lambd),"and",lambd-3*sqrt(lambd),"respectively.")
