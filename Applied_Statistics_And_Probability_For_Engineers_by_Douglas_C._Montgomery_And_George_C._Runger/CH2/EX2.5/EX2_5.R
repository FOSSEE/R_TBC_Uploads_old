#Automobile Colors(Pg no. 20)
foo<-function(){
  vehicle_types = 12
  
  exterior_color_black = 2
  #Set S = {black, red}
  
  exterior_color_white = 4
  #Set S = {black, white, blue, brown}
  
  exterior_color_blue = 3
  #Set S = {black, red, blue}
  
  exterior_color_brown = 1
  #Set S = {brown}
  
  total_no_of_outcome = vehicle_types*exterior_color_black+
    vehicle_types*exterior_color_white+
    vehicle_types*exterior_color_blue+
    vehicle_types*exterior_color_brown
  
  cat("The sample space contains",total_no_of_outcome,"vehicle types")
}

foo()
