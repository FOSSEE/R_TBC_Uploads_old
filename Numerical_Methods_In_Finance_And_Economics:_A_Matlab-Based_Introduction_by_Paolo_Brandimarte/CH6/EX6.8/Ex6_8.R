require(quadprog)
H = 2*eye(2)
f<-c(0,0)
Aeq<-matrix(c(1,1),nrow = 1)
beq<-4
lb<-matrix(c(0,3),ncol =1,nrow = 2)
quadprog(C = H,d = f,Aeq = Aeq,beq = beq,lb = lb)$xmin