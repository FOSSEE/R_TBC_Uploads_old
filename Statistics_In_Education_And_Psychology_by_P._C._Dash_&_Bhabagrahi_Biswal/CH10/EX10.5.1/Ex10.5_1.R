#Page.No 10.5

x<-50  #Marks
M<-60  # Mean
S.D<-10  # Std deviation

z<-scale(x,center = M,scale = S.D)

cat("Rama's score is ",z[1,],"  i.e  1-sigma  distance below the mean")
