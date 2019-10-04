supplier1<-0.40
supplier2<-0.60
defective_supplier1<-0.10
defective_supplier2<-0.05
cat("prob tire comes from supplier1 if it is defective", (supplier1*defective_supplier1)/((supplier1*defective_supplier1)+
                                                                                            supplier2*defective_supplier2))