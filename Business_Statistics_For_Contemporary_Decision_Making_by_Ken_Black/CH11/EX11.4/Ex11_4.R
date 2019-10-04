#  Two-Way ANOVA :

Types_of_warehouses <- c("GM","GM","GM","GM","GM","GM","GM","GM","GM",
                         "Com","Com","Com","Com","Com","Com","Com","Com","Com",
                         "BS","BS","BS","BS","BS","BS","BS","BS","BS",
                         " CS"," CS"," CS"," CS"," CS"," CS"," CS"," CS"," CS")


Training_sessions <- c("A","A","A","B","B","B","C","C","C","A","A","A",
                       "B","B","B","C","C","C","A","A","A","B","B","B",
                       "C","C","C","A","A","A","B","B","B","C","C","C")

Values <- c(3,4.5,4,2,2.5,2,2.5, 1,1.5,5,4.5,4,1,3,2.5,0,1.5,2,2.5,3,3.5,1,3, 1.5,
            3.5,3.5, 4,2,2,3,5, 4.5,2.5,4, 4.5, 5)

df <- data.frame(Types_of_warehouses,Training_sessions,Values)
df

av <- aov(Values~as.factor(Types_of_warehouses)*as.factor(Training_sessions),data= df)
av
summary(av)




        
       
        
                         
                        
                         
                       
                         
                         
                         
                         
                        
        