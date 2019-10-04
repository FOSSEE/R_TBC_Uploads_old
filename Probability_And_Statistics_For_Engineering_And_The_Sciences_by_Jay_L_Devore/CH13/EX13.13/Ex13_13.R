#Ex13.13, Page 560
#Answers may vary slightly due to rounding off of values

temp1<-x1<-c(21,21,7,7,28,0,14,14,14)
temp2<-x2<-c(0.65,0.55,0.65,0.55,0.60,0.60,0.70,0.50,0.60)
x1x2<-x1*x2
Comp_str<-c(33.55,47.55,35.00,35.90,40.90,39.10,31.55,48.00,42.30)
Adsorbability<-c(8.42,6.26,6.74,6.59,7.28,6.90,10.80,5.63,7.43)
df1<-data.frame(x1,x2,x1x2,Comp_str,Adsorbability)

#To find mean and SST values
ybar_compstr<-mean(Comp_str)
ybar_Adsorb<-mean(Adsorbability)
SST_CompStr<-sum((Comp_str-ybar_compstr)^2)
SST_Adsorb<-sum((Adsorbability-ybar_Adsorb)^2)
cat("Mean of compression strength values:",ybar_compstr,"\n")
cat("Mean of adsorbability values:",ybar_Adsorb,"\n")
cat("SST of compression strength:",SST_CompStr,"\n")
cat("SST of adsorbability:",SST_Adsorb,"\n\n")

#First-order regression model
m1<-lm(Comp_str~(x1+x2))
SSE1<-sum(resid(m1)^2)
cat("SSE for first-order model:",SSE1,"\n")
cat("R squared value:",summary(m1)$r.squared,"\n\n")

#Model including interaction predictor
m2<-lm(Comp_str~(x1*x2))
SSE2<-sum(resid(m2)^2)
cat("SSE for first-order model including interaction predictor:",SSE2,"\n")
cat("R squared value:",summary(m2)$r.squared,"\n\n")

#To create estimated regression function
x1<-14 #% limestone
x2<-0.6 #Water-cement ratio
new<-data.frame(x1,x2)
y_cap<-predict(m2,new)
cat("Prediction of compression strength at (14,0.6):",y_cap,"\n")

#When adsorbability is taken as the dependent variable
#First-order regression model 
m3<-lm(Adsorbability~(temp1+temp2))
cat("R squared value for first-order model:",summary(m3)$r.squared,"\n")

#Model including interaction predictor
m4<-lm(Adsorbability~(temp1*temp2))
cat("R squared value when using interaction predictor:",summary(m4)$r.squared,"\n\n")


