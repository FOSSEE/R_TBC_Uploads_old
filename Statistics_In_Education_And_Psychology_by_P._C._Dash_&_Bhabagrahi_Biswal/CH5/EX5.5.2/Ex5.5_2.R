#Page.No 5.43

x<-c(30,31,32,33,34,35)#size of the garments 
f<-c(20,30,40,60,25,10) # no of persons wearing
data<-rep(x,f)

# Creating function to find mode 
## Or u can use the previous functions too
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

md<-Mode(data)

cat ("size of the dress most frequently used in season is",md)
