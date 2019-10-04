                                      # Page no. : 35

# Bar Charts and Pie Charts

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

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

# Bar Chart

ggplot(soft_drink_table,aes(soft_drink_names,Freq, fill = soft_drink_names))+geom_bar(stat = "identity")+
labs(title="Bar chart" , x = "Soft Drink", y = "Frequency")+ylim(0,20)

# Pie Chart

soft_drink_purchase_slices <- soft_drink_table$Freq  
soft_drink_names_labels <- soft_drink_table$soft_drink_names
soft_drink_purchase_pct <- (soft_drink_table$Freq/sum(soft_drink_table$Freq)) * 100 

soft_drink_names_labels <- paste(soft_drink_names_labels,soft_drink_purchase_pct)
soft_drink_names_labels <- paste(soft_drink_names_labels, "%", sep = "") 

pie(soft_drink_purchase_slices, labels = soft_drink_names_labels,
    col = rainbow(length(soft_drink_names_labels)),
    main = "Pie Chart for Soft Drink Purchase")