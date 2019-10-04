#20 test runs performed on urban roads with an intermediate-size car.
data<-c(19.7,21.5,22.5,22.2,22.6
        ,21.9,20.5,19.3,19.9,21.7
        ,22.8,23.2,21.4,20.8,19.4
        ,22.0,23.0,21.1,20.9,21.3)
xbar=mean(data)
var=var(data)
message("mean : ",xbar," mpg ","standard deviation ",var," mpg")