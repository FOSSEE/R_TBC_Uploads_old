Data <- c(30,36,47,50,52,52,56,60,63,70,70,110)

mode <- function(x) {
   uni_value <- unique(x)
    uni_value[which.max(tabulate(match(x, uni_value)))]
}

print("Mode")
print(paste("$",mode(Data)))
