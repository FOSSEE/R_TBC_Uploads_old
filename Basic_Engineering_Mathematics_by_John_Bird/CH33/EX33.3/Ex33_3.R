#page no. 357
#Function used:with(),mean(),readLines(),gsub()
              

table_data <- "(value) (frequency)
          (20.5,20.9] 3
          (21.0,21.4] 10 
          (21.5,21.9] 11
          (22.0,22.4] 13
          (22.5,22.9] 9
          (23.0,23.4] 2"
L <- readLines(textConnection(table_data))#read line from connection
DF <- read.table(text = gsub("[^0-9.]", " ", L), skip = 1, as.is = TRUE)#gsub replaces all occurrences

x <- with(DF, rep((V1 + V2)/2, V3))#computing the intermediate values

mean_result=mean(x)
print(mean_result)