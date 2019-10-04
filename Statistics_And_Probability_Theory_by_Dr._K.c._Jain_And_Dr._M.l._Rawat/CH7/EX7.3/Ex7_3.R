#Example 3 chapter 7 page no 297
l = 30 /(60*24)      #arrival_rate trains per minute
u = 1/36   # mean service rate per minute
ls = l/(u-l)      # average number of trains in the system
cat(ls,"average no of trains in yard")
rho = l/u
cat(rho^11, "prob trains exceed 10")     #answer given is wrong in the book
lnew=33/(60*24)
rhonew = lnew/u
lsnew = lnew/(u-lnew)      # average number of trains in the system
cat(round(lsnew,digits = 0),"average no of trains in yard")
cat(rhonew^11, "prob trains exceed 10")
#answer given is wrong in the book