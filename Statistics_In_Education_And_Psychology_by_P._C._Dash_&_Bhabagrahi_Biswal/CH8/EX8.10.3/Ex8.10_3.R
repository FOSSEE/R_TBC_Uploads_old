#Page.No 8.37

x<-c(5,10,15,20,80)
y<-c(30,37,80,90,95)

r<-cor(x,y,method="pearson")

cat("The coefficient of correlation is ",r,"moderate positive")
