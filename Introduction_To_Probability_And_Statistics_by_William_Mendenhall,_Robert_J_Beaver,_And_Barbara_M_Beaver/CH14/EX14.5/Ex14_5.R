survey <- matrix(c(24,9,13,289,100,565),ncol = 3, byrow = TRUE)
colnames(survey) <- c("No Vaccine","One Shot","Two Shots")
rownames(survey) <- c("Flu","No Flu")
survey <- as.table(survey)
survey
chisq.test(survey,correct = F)
cat("null hypothesis is rejected so there is sufficient evidence to indicate a relationship between treatment and influence of flu")