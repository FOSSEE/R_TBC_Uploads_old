#PAGE NUMBER--2.27
#Example number--2.18

#Part (a)
#Average price
avg.p=function(){
	#Number of varities of milk
	n=4
	#Prices of milk sold at different varities
	a=c(8,10,12,15)
	#Average price
	AveragePrice=1/((1/n)*(1/a[n-3]+1/a[n-2]+1/a[n-1]+1/a[n]))
	sprintf("Your average price is: %s",AveragePrice)
}
avg.p()


#Part (b)
quality=c("A","B","C")
p.p.p=c(1.00,1.50,2.00)   #price per pencil
m.s=c(50,30,20)           #money spent
fr.distr=data.frame(quality,p.p.p,m.s)
fr.distr
n.e=sum(m.s)              #net value
p.p= sum(m.s / p.p.p)     #number of pencils purchased
Averagep.p.p = n.e/p.p    #Average price per pencil
Averagep.p.p

	



