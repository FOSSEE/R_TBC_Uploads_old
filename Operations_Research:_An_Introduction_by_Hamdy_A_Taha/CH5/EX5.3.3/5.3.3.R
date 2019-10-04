##Chapter 5 : Transportation Model and its Variant
##Example 3-3 : Page 209
costs <- matrix (c(10,2,20,11,12,7,9,20,4,14,16,18), 3, 4,byrow = T)
row.rhs <-c(15,25,10)
col.rhs <-c(5,15,15,15)
costsdup <- costs
allotment <- matrix (rep(0,12), 3, 4,byrow = T)

#until there are supply and demand
while (sum(row.rhs) & sum(col.rhs)) {
  #index of min cost
  index=which.min(costsdup)
  #get the row index
  rowindex=index %% length(row.rhs)
  #get the coloumn index
  colindex=ceiling(index/length(row.rhs))
  #if row index=0 ,assign 3(since we are takinf modulus)
  if (rowindex==0) {rowindex=3}
  
  #if demand > supply
  if(row.rhs[rowindex]>=col.rhs[colindex]){
    #allocate supply to that cell
    allotment[index] <- col.rhs[colindex]
    ##deduct supply from demand
    row.rhs[rowindex] <- row.rhs[rowindex]-col.rhs[colindex]
    ##assign zero to supply
    col.rhs[colindex]=0
  }else{
    #allocate demand to that cell
    allotment[index] <- row.rhs[rowindex]
    ##deduct demand from supply
    col.rhs[colindex] <- col.rhs[colindex]-row.rhs[rowindex]
    ##assign zero to demand
    row.rhs[rowindex]=0
  }
  costsdup[index]=1000
  
}
  

allotment