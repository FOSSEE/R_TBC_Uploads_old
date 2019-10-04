#Page.no 10.7 - 10.8

x<-50  #Marks
M<-40  # Mean
S.D<-6  # Std deviation

z<-scale(x,center = M,scale = S.D)

z<-z[1,]

H_score<-50+14*z

cat("Rama H_score is ",H_score)
