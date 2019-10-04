#Given data
failures<- c(1,3,0,3,26,2,7,4,0,2,3,3,6,3)
#mean
mean<- mean(failures)
#median
median <-median(failures)
# function for mode
getmode<- function(x){
 uniq<- unique(x) #unique() function used
uniq[which.max(tabulate(match(failures,uniq)))] #which.max() function used
}
mode<- getmode(failures)
mode #mode