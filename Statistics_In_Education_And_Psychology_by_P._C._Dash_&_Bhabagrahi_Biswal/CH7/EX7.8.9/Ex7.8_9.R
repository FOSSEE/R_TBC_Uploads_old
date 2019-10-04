#Page.No 7.37

scores<-c(2,5,4,6,8)
Mn<-mean(scores)
n <- length(scores)  # number of values
std <- sd(scores)    # sample standard deviation
S.D<-sqrt((std ^ 2) * ((n - 1) / n)) # Population Standrad deviation


#  (i)Addition of 2 in each scores
scores_new<-scores+2
Mn_new<-mean(scores_new)
n <- length(scores_new)  # number of values
std_new <- sd(scores_new)    # sample standard deviation
S.D_new<-sqrt((std_new ^ 2) * ((n - 1) / n))

cat("Previously the Mean and standard deviation respectively are",Mn ,
    "and", S.D)
cat("After addition of 2 in each score Mean has enhanced ",Mn_new-Mn,"
    and standard deviation remains unchanged i.e ",S.D-S.D_new)


#(ii)subtraction of 2 in each scores
scores_sub<-scores-2
Mn_sub<-mean(scores_sub)
n <- length(scores_sub)  # number of values
std_sub <- sd(scores_sub)    # sample standard deviation
S.D_sub<-sqrt((std_sub ^ 2) * ((n - 1) / n))

cat("Previously the Mean and standard deviation respectively are",Mn ,
    "and", S.D)
cat("After subtraction of 2 in each score Mean has reduced by ",Mn-Mn_sub,
    "and standard deviation remains unchanged i.e ",S.D-S.D_sub)


# (iii) multiplication of 2 in each scores
scores_mult<-scores*2
Mn_mult<-mean(scores_mult)
n <- length(scores_mult)  # number of values
std_mult <- sd(scores_mult)    # sample standard deviation
S.D_mult<-sqrt((std_mult ^ 2) * ((n - 1) / n))

cat("Previously the Mean and standard deviation respectively are",Mn ,
    "and", S.D)
cat("After multiplication of 2 in each score Mean has multiplied by ",2,
    "and the result is ",Mn_mult,"thats is same as ",Mn*2)
cat("standard deviation also multiplied by ",2,
    "and the result is",S.D_mult,"thats is same as",S.D*2 )

# (iii) division of 2 in each scores
scores_div<-scores/2
Mn_div<-mean(scores_div)
n <- length(scores_div)  # number of values
std_div <- sd(scores_div)    # sample standard deviation
S.D_div<-sqrt((std_div ^ 2) * ((n - 1) / n))

cat("Previously the Mean and standard deviation respectively are",Mn ,
    "and", S.D)
cat("After division 2 in each score Mean has divided by ",
    2,"and the result is ",Mn_div,"i.e ", Mn/2)

cat("standard deviation also divided by ",2,"and the result is",S.D_div,"i.e",S.D/2)
