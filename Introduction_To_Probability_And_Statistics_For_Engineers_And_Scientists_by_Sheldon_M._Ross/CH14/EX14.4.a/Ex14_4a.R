Xlife = 420;
Ylife = 510;
Xnum=  10;
Ynum =15;
ts = Xlife*Ynum/(Ylife*Xnum);
cat( "The value of the test statistic is",ts)
val = pf(ts, Xnum, Ynum)
pvalue = 2*(1-val);
cat("The p-value is",pvalue)
cat("We cannot reject H0");