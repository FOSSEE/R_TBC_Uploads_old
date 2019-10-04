library(ROCR)

dataset<-data.frame(Pre=c(0.90,0.80,0.70,0.60,0.55,0.54,0.53,0.51,0.50,0.40),cls=c(1,1,0,1,1,0,0,0,1,0))


predictions <- prediction(dataset$Pre, dataset$cls)

model_perf <- performance(predictions,"tpr","fpr")

plot(model_perf)





