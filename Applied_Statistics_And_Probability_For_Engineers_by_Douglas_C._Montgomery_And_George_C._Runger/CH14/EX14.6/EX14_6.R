#Process Yield(Pg no. 612)

yc = c(40.3,40.5,40.7,40.2,40.6)
yf = c(40.0,41.5,39.3,40.9)

ycbar = sum(yc)/length(yc)
yfbar = sum(yf)/length(yf)
nf = length(yf)
nc = length(yc)
SSe = 0.0
for(i in 1:nc)
{
  SSe = SSe + (yc[i] - ycbar)^2
}
SSe
MSe = SSe/(nc-1)
MSe

SScurvature = (nc*nf*((yfbar-ycbar)^2))/(nc+nf)
SScurvature

statistic = ((yfbar-ycbar))/sqrt(MSe*((1/nc)+(1/nf)))
statistic = round(statistic, digits = 2)
statistic