x= c( 36 ,11 ,51 ,2 ,4  ,13 ,12 ,66 ,9 ,18  ,22 ,14 ,54 ,10 ,78 ,21 ,14 ,56 ,9 ,100)
m <- matrix(x,byrow = TRUE,nrow =4 )
rownames(m) <- c("Business","Instructional ", "Personal","All")
colnames(m) <- c("Fatal","Minor","Serious","None","All")

#a) An accident on a business flight
m ["Business","All"]  /100

#b)  An accident that resulted in a fatal injury 
m["All","Fatal"]/100

#c) An accident that resulted in a minor injury given that it was on a business flight 
m["Business","Minor"]/100

#d)  An accident on a business flight that resulted in a minor injury 
m["Business","Minor"]/100 * m["Business","All"]/100
    
#e)  An accident on a business flight given that it was fatal
(m["Business","All"] * m["Business","Fatal"] / m["All","Fatal"])/100

