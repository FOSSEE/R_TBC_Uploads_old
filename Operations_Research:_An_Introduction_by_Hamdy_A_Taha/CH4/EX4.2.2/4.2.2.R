##Chapter 4 : Duality and Post-optimality Analysis
##Example 2-2 : Page 162

##Returns primal objective value
PrimalObj<-function(x1,x2,x3){
	return(5*x1+12*x2+4*x3)
}

#Returns dual objective value
DualObj<-function(y1,y2){
	return(10*y1+8*y2)
}

##Calling primal and dual functions with the arbitrary feasible solutions
PrimalObj(0,0,8/3)
DualObj(6,0)