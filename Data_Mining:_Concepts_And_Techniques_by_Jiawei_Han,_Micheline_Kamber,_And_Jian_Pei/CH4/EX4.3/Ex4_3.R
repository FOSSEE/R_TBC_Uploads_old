

# Setup the dimension tables


Citytab <- data.frame(key=c("MY", "Ben", "TU", "HU", "GU"),
                          name=c("MYSORE", "Bengaluru", "Tumkur", "Hubballi", "Gulabarga"),
                          country=c("India", "India", "India", "India", "India"))


weektab <- data.frame(key=1:7,
                          desc=c("Mon", "Tue", "Wen", "Thu", "Fri", "Sat", "Sun"))


prodtab <- data.frame(key=c("Dal", "Sugar", "Rice"), price=c(50, 70, 40))



# Function to generate the Sales table


Totalsales <- function(Record_Size) {
   

    location <- sample(Citytab$key, Record_Size, replace=T, prob=c(2,2,1,1,1))

    week<- sample(weektab$key, Record_Size, replace=T)

    year <- sample(c(2017,2018), Record_Size, replace=T)

    product <- sample(prodtab$key, Record_Size, replace=T, prob=c(1, 5, 7))

    sales <- data.frame(week=week, year=year, location=location, prod=product)
}


 # create  fact table of sales
Table_fact_sales <- Totalsales(100) 

print(Table_fact_sales)



