##Example 13.10.1 Pg.720
##Test for correlation

age <- c(20,21,22,24,27,30,31,33,35,38,40,42,44,46,48,51,53,55,58,60)
eeg <- c(98,75,95,100,99,65,64,70,85,74,68,66,71,62,69,54,63,52,67,55)

cor.test(age,eeg)

#pvalue < 0.05, hence age and eeg are inversely related
