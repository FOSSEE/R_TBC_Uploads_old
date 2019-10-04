                                       # Page no. : 33

# Frequency Distribution (Categorical Data)

# Dataset

soft_drink_names <- c("Coke Classic", "Diet Coke", "Pepsi", "Diet Coke", "Coke Classic","Coke Classic",
                     "Dr. Pepper", "Diet Coke", "Pepsi", "Pepsi" , "Coke Classic", "Dr. Pepper",
                     "Sprite", "Coke Classic", "Diet Coke", "Coke Classic", "Coke Classic", "Sprite",
                     "Coke Classic", "Diet Coke", "Coke Classic", "Diet Coke", "Coke Classic", "Sprite",
                     "Pepsi", "Coke Classic", "Coke Classic", "Coke Classic", "Pepsi", "Coke Classic",
                     "Sprite", "Dr. Pepper", "Pepsi", "Diet Coke", "Pepsi", "Coke Classic", 
                     "Coke Classic", "Coke Classic", "Pepsi", "Dr. Pepper", "Coke Classic", "Diet Coke",
                     "Pepsi", "Pepsi", "Pepsi", "Pepsi", "Coke Classic", "Dr. Pepper", "Pepsi", "Sprite")

soft_drink_table <- data.frame(table(soft_drink_names))

                                   # Page no. : 34

FD <- data.frame(Soft_drinks = soft_drink_table$soft_drink_names,
                 Frequency = soft_drink_table$Freq)   # Frequency Distribution


RF <-  FD$Frequency / sum(FD$Frequency)   # Relative Frequency

FD <- cbind(FD,Relative_frequency = RF)

PF <- FD$Relative_frequency * 100    # Percentage Frequency

FD <- cbind(FD, Percentage_frequency = PF)

View(FD)   # Viewing the Frequency Distribution Table

# Total values of Frequency Distribution

total_freq <- sum(FD$Frequency)

total_rel_freq <- sum(FD$Relative_frequency)

total_per_freq <- sum(FD$Percentage_frequency)

cat("Total value for frequency is", total_freq, "\n")
cat("Total value for relative frequency is", total_rel_freq, "\n")
cat("Total value for percentage frequency is", total_per_freq)




                     