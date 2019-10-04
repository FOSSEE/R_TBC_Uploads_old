 
CK <- c(20, 60, 100, 140, 180, 220, 260, 300, 340, 380, 420, 460, 500)
y <- cbind( c(2, 13, 30, 30, 21, 19, 18, 13, 19, 15, 7, 8, 35) , c(88, 26, 8, 5, 0, 1, 1, 1, 0, 0, 0, 0, 0))
model1=glm(y~CK, family = binomial)
summary(model1)
cbind(CK,PRED=predict(model1,type = "response"))
 #  probability that a patient had a heart attack when the CK level in the patient was 140 is .868

 