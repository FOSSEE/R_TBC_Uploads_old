##Chapter 6 : Network Model
##Example 5-3 : Page 282 
#Add an empty plot
plot(1, type="n", axes=T, xlab="Days", ylab="", yaxt='n',xlim=c(0,25),ylim=c(0,10), yaxs= "i", xaxs = "i")

#Add line segment for each segment
segments(0, 9, x1 = 5, y1 = 9)
segments(5, 8, x1 = 13, y1 = 8)
segments(13, 7, x1 = 25, y1 = 7)
segments(0, 6, x1 = 11, y1 = 6,lty = 2)
segments(5, 5, x1 = 11, y1 = 5,lty = 2)
segments(8, 4, x1 = 13, y1 = 4,lty = 2)
segments(8, 3, x1 = 25, y1 = 3,lty = 2)
segments(13, 2, x1 = 25, y1 = 2,lty = 2)
#Add text at specific coordinates
text(c(2.5,5,7.5,8,10.5,16,19,19),c(9,6,5,8,4,3,2,7)+0.3,labels = c("A - 5","B -6","C - 3","D -8","E - 2","F - 11","G - 1","H - 12"),cex = 0.6)
#Add legend
legend('topright', c("Critical","Non-Critical") ,lty=c(1,2), bty='n', cex=.75)
