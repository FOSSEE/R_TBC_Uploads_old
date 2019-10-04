library(FinCal)
mypvvar <- function(cf,r) {
  # get number of periods
  n = length(cf)
  #1 get vector of discount factors
  df<-matrix(0,n)
  for (i in 0:n-1){
    df[i+1] = 1/(1+r)^(i)
  }
  #compute result
  pv = cf*df
}

cfdur <- function(cf,yld) {
  #   CFDUR  Cash flow duration and modified duration. 
  #   [D,MD] = CFDUR(CF,YLD) calculates the duration D and modified duration 
  #   (volatility) MD of a cash flow given the cash flow, CF, and the periodic  
  #   yield, YLD.  
  # 
  #   For example, nine payments of $2.50 and a final payment of $102.50 with
  #   a yield of 2.5% returns a duration of 8.97 periods and a modified duration
  #   of 8.75 periods. 
  # 
  #   See also BONDCONV, BONDDUR, CFCONV. 
  #   Copyright 1995-2006 The MathWorks, Inc.
  x<-dim(cf)
  rowcf = x[1]
  colcf = x[2]
  if (rowcf == 1){
    cf = t(cf)
    colcf = 1
  }
  
  if (colcf > 1 ){
    if (length(yld) == 1){
      yld = yld*matrix(1,colcf)
    }
  }
  
  pv = matrix(0,colcf)
  d = pv
  md = pv
  m = length(cf[,1])
  fac = t((1:m))
  for (loop in 1:colcf){
    # Compound the yield
    rates = (matrix(data = 1,ncol = m,nrow = 1)*(1+yld[loop]))^fac
    # find the net present value 
    pv[loop] = sum(mypvvar(c(0,cf[,loop]),yld[loop]))
    # duration 
    d[loop] = sum(cf[,loop]/(rates)*fac)/pv[loop]
    # modified duration 
    md[loop] = d[loop]/(1+yld[loop])
  }
  cat("Duration of cash flow:",d,"\n")
  cat("Modified Duration (volatility) of cash flow:",md,"\n")
  return(list(d=d,dm=md))
}

cfconv <- function(cf,yld) {
  #   CFCONV Cash flow convexity. 
  #   CX = CFCONV(CF,YLD) calculates the convexity C of a cash flow 
  #   given the cash flow, CF, and the periodic yield, YLD. 
  # 
  #   For example, nine payments of $2.50 and a final payment of $102.50  
  #   with a yield of 2.5% returns a convexity of 90.45 periods.   
  # 
  #   See also BONDCONV, BONDDUR, CFDUR. 
  
  #       Copyright 1995-2006 The MathWorks, Inc.
  x<-dim(cf)
  rowcf = x[1]
  colcf = x[2]
  if (rowcf == 1){
    cf = t(cf)
    colcf = 1
  }
  
  if (colcf > 1 ){
    if (length(yld) == 1){
      yld = yld*matrix(1,colcf)
    }
  }
  
  pv = matrix(0,colcf)
  cx = pv
  m = length(cf[,1])
  fac = t((1:m))
  for (loop in 1:colcf){
    #Compound the yield
    rates = (matrix(data = 1,ncol = m,nrow = 1)*(1+yld[loop]))^fac
    #find the net present value 
    pv[loop] = sum(mypvvar(c(0,cf[,loop]),yld[loop]))
    cx[loop] = sum(cf[,loop]/(rates)*fac*(fac+1))/((1+yld[loop])^2*pv[loop])
  }
  cat("Cash flow convexity:",cx,"\n")
  return(cx)
}

cf<-c(10,10,10,10)
p1=abs(pv.uneven(0.05,cf))
p2=abs(pv.uneven(0.055,cf))
(p2-p1)
cf<-matrix(cf,nrow = 1,ncol = 4)
yld<-matrix(data = c(0.05),nrow = 1,ncol = 1)
x<-cfdur(cf,yld)
d<-x$d
dm<-x$dm
cv=cfconv(cf,yld)
-dm*p1*0.005
-dm*p1*0.005+0.5*cv*p1*(0.005)^2