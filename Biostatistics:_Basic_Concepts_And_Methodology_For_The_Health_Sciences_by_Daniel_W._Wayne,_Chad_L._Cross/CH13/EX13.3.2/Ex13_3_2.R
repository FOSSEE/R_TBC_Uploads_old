##Example 13.3.2 Pg.677
##Sign test for paired data

score_x <- c(1.5,2,3.5,3,3.5,2.5,2,1.5,1.5,2,3,2)
score_y <- c(2,2,4,2.5,4,3,3.5,3,2.5,2.5,2.5,2.5)
diff<-score_x - score_y
diff
sdiff<-sign(diff)
sdiff
s=length(sdiff[sdiff==1])
s
cv=pbinom(s,11,0.5)
cv

#since pvalue<0.05, instruction was beneficial


