public<-c(24,57,69)
private<-c(60,78,112)
private_percent<-(private*100)/250
public_percent<-(public*100)/150
private_percent
label<-paste(public_percent,"%",sep=" ")
label1<-paste(private_percent,"%",sep=" ")
par(mfrow = c(1,2))
color<-c("white","aliceblue","cadetblue1")
pie(private_percent,labels = label1,clockwise = TRUE,main="Private",col = color)
legend("bottomleft",c("Full Professor","Assosiate Professor","Assistant Professor"),cex=0.35,fill = color)
pie(public_percent,labels = label,clockwise = TRUE,main="Public",col = color)
legend("bottomleft",c("Full Professor","Assosiate Professor","Assistant Professor"),cex=0.35,fill = color)
cat("proportion of assistant professor is roughly same for both private and public colleges")
cat("public colleges have smaller proportion of full professors and a large proportion of associate professors")