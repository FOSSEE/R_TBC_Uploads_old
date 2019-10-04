##Example 13.3.1 Pg.673
##Sign test

score <- c(4,5,8,8,9,6,10,7,6,6)
md= median(score)
diff<-score-md
diff
sdiff<-sign(diff)
sdiff
s=length(sdiff[sdiff==1])
s
cv=pbinom(1,9,0.5)
cv
pval = 2*cv ;pval

#since pvalue<0.05, we conclude median score is not 5


