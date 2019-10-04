
# Chapter 10
# Example 10.14 page no. 377 from the pdf..
# Test For Homogeneity..

# given data test the hypothesis

# H0 - proportion of all political affiliation are same for each opinion

# H1 - for at least 1 opinion the proportion is not same

# using chi-sq statistic..

for1 <- c(82,70,62)

against <- c(93,62,67)


undecided <- c(25,18,21)

pol_affi <- as.data.frame(rbind(for1,against,undecided))

names(pol_affi) <- c('Democrat','Republican','Independent')

chisq.test(pol_affi)

cat("The p-value is",chisq.test(pol_affi)$p.value,"so we cannot reject null hypothesis")

# the answer to the chi^2 is aprroximated to 1.53 as computed 1.5274 by R..



