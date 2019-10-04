#Page.No 5.7

# Given data table 
low_value<-9.5
high_value<-34.5
step_value<-5                              
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(5,4,6,3,2)  # frequency of the distribution
data<-rep(X_mid,f)
mean(data)

# to create a table from raw data
x<-cut(data, breaks=X_breaks)
datatable<-table(x)
df<-data.frame(datatable)
df$midpnt<-X_mid
df
