##Chapter 5 : Transportation Model and its Variant
##Example 3-2 : Page 208
costs <- matrix (c(10,2,20,11,12,7,9,20,4,14,16,18), 3, 4,byrow = T)
row.rhs <-c(15,25,10)
col.rhs <-c(5,15,15,15)
i=1;j=1
allotment <- matrix (rep(0,12), 3, 4,byrow = T)

while (sum(row.rhs) & sum(col.rhs)) {
  ##Till we reach the last row and coloumn
  while (i<=3 & j<=4) {
    ##if demand is >= supply
    if (row.rhs[i] >= col.rhs[j]) {
      ##assign the demand to that cell
      allotment[i,j]=col.rhs[j]
      ##deduct supply from demand
      row.rhs[i]=row.rhs[i]-col.rhs[j]
      ##assign zero to supply
      col.rhs[j]=0
    }else {
      ##assign the supply to that cell
      allotment[i,j]=row.rhs[i]
      ##deduct demand from supply
      col.rhs[j]=col.rhs[j]-row.rhs[i]
      ##assign zero to demand
      row.rhs[i]=0
      
    }
    #if demand=0, go to the next demand,else go to next supply
    ifelse(row.rhs[i] == 0,(i=i+1),(j=j+1))
  }
}
allotment