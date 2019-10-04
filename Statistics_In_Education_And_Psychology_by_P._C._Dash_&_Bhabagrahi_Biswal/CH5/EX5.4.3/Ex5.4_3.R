#Page.No 5.25

# (i)
scores<-c(10,8,25,24,30,45)
median(scores)

#(ii)
Scores<-c(40,48,43,42,41)
median(Scores)

#(iii)
score<-c(11,13,15,15,15,18,21)
median(score)

lower_value<-median(score)-0.5 # from the lower limit 
corrected_median<-lower_value+2/3
cat("median is ",corrected_median)
