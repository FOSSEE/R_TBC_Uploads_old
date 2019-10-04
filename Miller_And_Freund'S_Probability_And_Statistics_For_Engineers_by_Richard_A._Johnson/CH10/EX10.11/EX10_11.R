#95% confidence interval for p1 ??? p2
x1=77
n1=2841
x2=107
n2=2297
P1bar=x1/n1
P2bar=x2/n2
Int1=P1bar-P2bar-1.96*sqrt((P1bar*(1-P1bar)/n1)+(P2bar*(1-P2bar)/n2))
Int2=P1bar-P2bar+1.96*sqrt((P1bar*(1-P1bar)/n1)+(P2bar*(1-P2bar)/n2))
Int1
Int2
message("so the 95% confidence interval is  0.030 < p1 - p2 < 0.009")
