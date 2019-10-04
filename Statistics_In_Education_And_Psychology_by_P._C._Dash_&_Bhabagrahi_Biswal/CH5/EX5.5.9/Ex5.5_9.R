#Page.No 5.45

# Given frequency distribution data
low_value<-9.5
high_value<-39.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_breaks
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
X_mid
f<-c(2,3,2,8,3,2)
data<-rep(X_mid,f)

# creating function to find mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
Mode(data)
