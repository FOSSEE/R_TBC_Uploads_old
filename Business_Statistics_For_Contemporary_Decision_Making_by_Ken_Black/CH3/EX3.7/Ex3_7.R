# Mean, Median, Mode, Variance, and Standard deviation :

class <- c("10-under-15","15-under-20","20-under-25","25-under-30","30-under-35",
           "35-under-40","40-under-45","45-under-50")
freq <- c(6,22,35,29,16,8,4,2)
class <-data.frame(class,freq)
class

# Mean of each intervals :
a <- mean(10:15)
b<-mean(15:20)
c<-mean(20:25)
d<-mean(25:30)
e<-mean(30:35)
f<-mean(35:40)
g<-mean(40:45)
h<-mean(45:50)
Mean <- rbind(a,b,c,d,e,f,g,h)
Mean

# fM :
for(i in 1:8)
{
  fM <- freq * Mean
}
fM

# group mean :
Group_mean <- sum(fM)/sum(freq)
Group_mean

# Mean - group mean :
for(i in 1:8)
{
  Mean_grpmean <- Mean - Group_mean
}
Mean_grpmean

# Square of Mean_grpmean :
Mean_grpmean_sq <- Mean_grpmean^2
Mean_grpmean_sq

# freq * Mean_grpmean_sq :
freq_Mean_grpmean_sq <- freq * Mean_grpmean_sq
freq_Mean_grpmean_sq


var <- sum(freq_Mean_grpmean_sq)/(sum(freq)-1)
var
sd <- sqrt(var)
sd

