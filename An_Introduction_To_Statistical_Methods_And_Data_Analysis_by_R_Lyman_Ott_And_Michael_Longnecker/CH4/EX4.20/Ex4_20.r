cities<-c("c1","c2","c3","c4","c5","c6","c7","c8","c9","c10")
# All possible samples are
t(combn(cities, 2)) 
total_pairs<-nrow(t(combn(cities, 2)))
# the probability associated with each sample in a random sample of 2 cities selected from the population
probability_selecting2cities<-1/total_pairs
print(probability_selecting2cities)