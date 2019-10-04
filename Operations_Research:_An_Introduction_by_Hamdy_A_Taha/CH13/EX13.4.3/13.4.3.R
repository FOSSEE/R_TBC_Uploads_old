##Chapter 13 : Decision Analysis and Games
##Example 4-3 : Page 559

#plot an empty graph
plot(1, type="n", axes=F,xlab = "x1", ylab = "x2", xlim = c(-0.5,1.5), ylim = c(-2,7), col = "red",
     yaxs= "i", xaxs = "i")

#Add custom axis on sides 1 and 2
axis(side = 1,pos = 0,at = seq(0,1,0.25))
axis(side = 2,pos = 1,at = seq(-2,9,2),padj=3.5)
axis(side = 2,pos = 0,at = seq(-2,9,2))

#Add line segments for the constriants
segments (0,6,1,-1,col = "red")
segments (0,4,1,2,col = "yellow")
segments (0,3,1,2,col = "green")
segments (0,2,1,3,col = "blue")
#adding a line segment to indicate the maximum
segments (0.5,0,0.5,2.5,col = "black",lwd = 1.5)
#Adding the name of the constriants on the graph
text(0,4,"B1",pos=4,cex=0.5)
text(0,3,"B2",pos=4,cex=0.5)
text(0,2,"B3",pos=4,cex=0.5)
text(0,6,"B4",pos=4,cex=0.5)