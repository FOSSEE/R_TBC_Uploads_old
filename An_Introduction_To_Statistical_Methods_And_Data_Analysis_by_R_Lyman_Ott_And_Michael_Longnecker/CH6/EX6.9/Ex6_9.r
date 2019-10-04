library(DescTools)
brandA=c(211.4,204.4,202.0,201.9,202.4,202.0,202.4,207.1,203.6,216.0,208.9,208.7,213.8,201.6,201.8,200.3,201.8,201.5,212.1,203.4)
brandB=c(186.3,205.7,184.4,203.6,180.4,202.0,181.5,186.7,205.7,189.1,183.6,188.7,188.6,204.2,181.6,208.7,181.5,208.7,186.8,182.9)
difference=brandA-brandB
 
y=rank(replace(abs(difference),abs(difference)==0,NA),na='keep');
cbind(difference,y)
# sum of positive and negative ranks are
Tminus=1+2+3+4+5+6
Tplus= 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 +15 + 16 +17.5 +18 + 19
T=min(Tminus,Tplus)
T
# T<53, we reject H0 and conclude that brand A fertilizer tends to produce more grass than brand B
difference=difference[-6]
 
 
MedianCI(difference,conf.level = 0.95,na.rm = FALSE, method = "exact",R = 999)
 
