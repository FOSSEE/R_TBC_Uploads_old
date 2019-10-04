

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

    product <- sample(prodtab$key, Record_Size, replace=T, prob=c(1, 3, 2))

    sales <- data.frame(week=week, year=year, location=location, product=product)
}


 # create  fact table of sales
Table_fact_sales <- Totalsales(20) 

print(Table_fact_sales)




Income <- tapply(Table_fact_sales$year, Table_fact_sales[,c("product", "week", "year")], FUN=function(x){return(sum(x))})


print("Showing the cells of income")

print(Income)


print("Slice")

slice<- Income["Dal", "1",]

print(slice)


print("Roll up")

print(apply(Income, c("week", "year"), FUN=function(x) {return(sum(x, na.rm=TRUE))}))


print("Drill down")
print(apply(Income, c("week", "year", "product"), FUN=function(x) {return(sum(x, na.rm=TRUE))}))



print("piot")
print(apply(Income, c("week", "year"), FUN=function(x) {return(sum(x, na.rm=TRUE))}))

print(apply(Income, c("week", "product"), FUN=function(x) {return(sum(x, na.rm=TRUE))}))



print("Dice")
print(Income[,c("1","2"),c("2017","2018")])






















