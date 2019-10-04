#Page.No 8.36

#Raw score method

X<-c(10,15,18,22,25)
Y<-c(32,18,25,21,24)

r<-cor(X,Y,method="pearson")
cat("The coefficient of correlation is ",r,"low negative")