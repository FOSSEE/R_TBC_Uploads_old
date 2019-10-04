cars<-c(448162, 404192, 368327, 318308, 272122, 260486, 249128, 234936, 218540, 207977)
interval1 = mean(cars) - (1.5*sd(cars));
interval2 = mean(cars) + (1.5*sd(cars));
data = 100*5/9;
cat("Atleast 55.55% of the data lies in the interval",interval1 ,"to",interval2)