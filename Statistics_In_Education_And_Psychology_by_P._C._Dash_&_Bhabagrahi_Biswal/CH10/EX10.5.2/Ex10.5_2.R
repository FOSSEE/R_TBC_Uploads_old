#Page.No 10.5

x<-50  #Marks
M<-40  # Mean
S.D<-10  # Std deviation

z<-scale(x,center = M,scale = S.D)

cat("Hari's score is ",z[1,],"i.e 1sigma distance above the mean")
