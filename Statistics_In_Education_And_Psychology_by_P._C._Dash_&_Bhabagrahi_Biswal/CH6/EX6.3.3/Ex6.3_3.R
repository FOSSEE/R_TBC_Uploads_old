#Page.No 6.13

# Function to find percentile rank of grouped data
percentilerank<-function(class_interval,lower_limit,x){
  L<-lower_limit
  row<-which(data$c==class_interval)
  f<-data$Freq[row]
  cf<-data.frame(cumsum(data$Freq))
  cf1<-cf$cumsum.data.Freq.[row]
  cf2<-cf$cumsum.data.Freq.[row-1]
  F<-if(row - 1<= 0) {
    cf1
    }else { cf2 }
  N<-sum(data$Freq)
  i<-step_value
  unname((100/N)*(F+(x-L)/i*f))
}

# Given data
low_value<-9.5
high_value<-69.5
step_value<-10
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
frequency<-c(4,8,2,2,3,1)
data<-rep(X_mid,frequency)
c<-cut(data,breaks = X_breaks)
table<-table(c)
data<-data.frame(table)
print(data)

# percentile rank of 24

PR22<-percentilerank("(19.5,29.5]",19.5,22)

cat("The percentile rank of 22 is ",PR22)


