# Median :

Company <- c("Enterprise","Hertz","Natioanl/Alamo","Avis", "Dollar", "Budget","Advantage",
             "U-save","Payless","ACE","Fox","Rent-A-Wreck","Traingle")

Number_of_Cars_in_Service <- c(643000,327000,233000,204000,167000,144000,20000,12000,10000,
                            9000,9000,7000,6000) 

data1 <- data.frame(Company,Number_of_Cars_in_Service)

sort_data  <- data1[order(-Number_of_Cars_in_Service),]

median(sort_data$Number_of_Cars_in_Service)
