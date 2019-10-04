selling_price<- c( 26.6, 25.3 ,23.8 ,24.0, 27.5,
        21.1 ,25.9 ,22.6, 23.8, 25.1,
        22.6 ,27.5 ,26.8 ,23.4, 27.5,
        20.8 ,20.4, 22.4 ,27.5, 23.7,
        22.2 ,23.8, 23.2, 28.7,27.5)
 # The mode of a set of measurements is defined to be the measurement that occurs most often
table(selling_price)
# determining Mode
modal_selling_price<-table(selling_price)
print("modal selling price of data")
names(modal_selling_price)[which(modal_selling_price==max(modal_selling_price))]
 