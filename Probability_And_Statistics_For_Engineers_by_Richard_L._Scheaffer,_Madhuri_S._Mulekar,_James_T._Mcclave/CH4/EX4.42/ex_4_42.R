#Employment Status by Gender

x =c(64046,3141,55433,2556)
m <- matrix(x,byrow = TRUE,nrow = 2)
rownames(m) <- c("Emp","Unemp")
colnames(m) <- c("M","F")

cat("Odds ratio:",( m[1,1]*m[2,2])/(m[1,2]*m[2,1]))

#Employment Status by Education
y =c( 36249,  1962, 39250, 1165)
m <- matrix(y,byrow = TRUE,nrow = 2)
rownames(m) <- c("Emp","Unemp")
colnames(m) <- c("HS","College")

cat("Odds ratio:",( m[1,1]*m[2,2])/(m[1,2]*m[2,1])) 
z= ( m[1,1]*m[2,2])/(m[1,2]*m[2,1])

cat(" risk of unemployment for those with a high school education is",1/z ," higher than the risk of unemployment for those with college education")
