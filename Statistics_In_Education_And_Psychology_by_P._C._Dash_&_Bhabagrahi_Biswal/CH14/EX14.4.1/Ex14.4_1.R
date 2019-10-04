# Page.No 14.6 - 14.12

X<-c(5,6,3,2,4,4,8,5,6,2,6,5,6,2,1)

Y<-c(6,7,5,4,3,8,7,6,5,4,4,6,5,2,3)

#ANOVA table for X
X1<-c(5,6,3,2,4)
X2<-c(4,8,5,6,2)
X3<-c(6,5,6,2,1)
combined_groups<-data.frame(cbind(X1,X2,X3))
stackedgroup<-stack(combined_groups)
anova_results_X<-aov(values~ind,data = stackedgroup)
summary(anova_results_X)

# ANOVA table for Y
Y1<-c(6,7,5,4,3)
Y2<-c(8,7,6,5,4)
Y3<-c(4,6,5,2,3)
combined_groups<-data.frame(cbind(Y1,Y2,Y3))
stackedgroup<-stack(combined_groups)
anova_results_Y<-aov(values~ind,data = stackedgroup)
summary(anova_results_Y)

table_value_1<-qf(.99,2,12)
table_value_5<-qf(.95,2,12)

## From the calculated F value and critical value @ 0.05 and 0.01 
## There is no difference among covariates of X

##### calculation of anova table by another method


sum(X)
sum(Y)
sum(X^2)
sum(Y^2)
sum(X*Y)

N<-length(X1)
sum_of_N<-length(X)

#Step 1  correction
Cx<-(sum(X))^2/sum_of_N
Cy<-(sum(Y)^2)/sum_of_N
Cxy<-sum(X)*sum(Y)/sum_of_N

#Step 2 TotalSS
TSSx<-sum(X^2)-Cx
TSSy<-sum(Y^2)-Cy
TSSxy<-sum(X*Y)-Cxy  # Cx<-(sum(X))^2/N

#step 3 Between means 
Bet_Mn_X<-(sum(X1)^2+sum(X2)^2+sum(X3)^2)/N-Cx
Bet_Mn_Y<-(sum(Y1)^2+sum(Y2)^2+sum(Y3)^2)/N-Cy
Bet_Mn_XY<-(sum(X1)*sum(Y1)+sum(X2)*sum(Y2)+sum(X3)*sum(Y3))/N-Cxy

# step 4 
# Within Group SS 
WSS_x<-TSSx-Bet_Mn_X
WSS_Y<-TSSy-Bet_Mn_Y
WSS_XY<-TSSxy-Bet_Mn_XY

# Degrees of freedom
Bdf<-3-1  # 3 groups 
Tdf<-length(X)-1
Wdf<-Tdf-Bdf
df<-c(Bdf,Wdf,Tdf)

#sum of squares
SSx<-c(Bet_Mn_X,WSS_x,TSSx)
SSy<-c(Bet_Mn_Y,WSS_Y,TSSy)

# Mean sum of squares
MSx<-SSx/df
MSy<-SSy/df

Anova_table<-matrix(c(df,SSx,SSy,MSx,MSy),3,5)

# step 6 computing adjusted sum of squares for Y 

TSSy.x<-TSSy-(TSSxy^2)/TSSx
WSSy.x<-WSS_Y-(WSS_XY^2)/WSS_x
BSSy.x<-TSSy.x-WSSy.x

SSy.x<-c(BSSy.x,WSSy.x,TSSy.x)
SSx.y<-c(BSSy.x,WSS_XY,TSSxy)

df<-c(Bdf,Wdf-1,Tdf-1)
MSy.x<-SSy.x/df

#Step 7 ANCOVA  

matrix(c(df,SSx,SSy,SSx.y,SSy.x,MSy.x),3,6) # Ancova table 

Fy.x<-2.94/1.72  # from the ANCOVA table 

Ftable<-qf(.95,2,13)

# Since F calculated value less than F table value Accept null hypothesis 
# The computation of adjusted SS for y is not significant @ 0.05

SDy.x<-sqrt(WSSy.x/11)  
#From comparison both are not significant at 0.05 level

## Step 8 Adjusted  y means

Mx<-c(mean(X1),mean(X2),mean(X3))
My<-c(mean(Y1),mean(Y2),mean(Y3))
GMx<-mean(Mx)
r_total<-cor(X,Y)
r_between<-Bet_Mn_XY/sqrt(Bet_Mn_X*Bet_Mn_Y)
r_within<-WSS_XY/sqrt(WSS_x*WSS_Y)
bx<-WSS_XY/WSS_x

M1<-mean(Y1)-bx*(mean(X1)-GMx)
M2<-mean(Y2)-bx*(mean(X2)-GMx)
M3<-mean(Y3)-bx*(mean(X3)-GMx)

My.x<-c(M1,M2,M3)

Table<- matrix(c(Mx,My,My.x),3,3)
print(Table)

# Step 9 Comparison of Adjusted Means 

SDy.x
SEmd<-SDy.x*sqrt(1/length(X1)+1/length(X2))

# t_value

(M1-M2)/SEmd 

(M1-M3)/SEmd

(M2-M3)/SEmd 

# All pairs are not significant 
cat("There is high correlation",r_between,r_within,r_total)

"hence Group 1 , Group 2 , Group 3 not differ significantly " 

