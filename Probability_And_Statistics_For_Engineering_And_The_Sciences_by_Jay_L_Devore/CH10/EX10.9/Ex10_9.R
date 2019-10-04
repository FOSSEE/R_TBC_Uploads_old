#Ex10.9, Page 412

Permanent_molding<-c(45.5,45.3,45.4,44.4,44.6,43.9,44.6,44.0)
Die_casting<-c(44.2,43.9,44.7,44.2,44.0,43.8,44.6,43.1)
Plaster_molding<-c(46.0,45.9,44.8,46.2,45.1,45.5)

#To display ANOVA table
data1<-data.frame(Mold=c(Permanent_molding,Die_casting,Plaster_molding),Treatment=factor(rep(c("Mold1","Mold2","Mold3"),times=c(length(Permanent_molding),length(Die_casting),length(Plaster_molding)))))

cat("ANOVA table\n")
a<-aov(Mold~Treatment,data=data1)
print(summary(a))