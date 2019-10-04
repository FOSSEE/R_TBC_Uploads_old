snacks<-c(11.200, 8.200, 4.300, 3.800, 2.500)
food<-c("Potato chips", "Tortilla chips", "Pretzels", "Popcorn", "Snack Nuts")
pct <- round(snacks/sum(snacks)*100, digits = 1)# round off to one decimal place
pct
food <- paste(food,"(", pct, ")") 
food <- paste(food,"%",sep="") 
pie(snacks, labels=food, main="Amount of food eaten during super bowl")