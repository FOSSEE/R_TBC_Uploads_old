#Automobile options(Pg no. 19)
foo<-function(){
  number_of_possible_outcomes_of_automatic_transmission = 2 
  #Set S = {With an automatic transmission, Without an automatic transmission}
  
  number_of_possible_outcomes_of_sunroof = 2 
  #Set S = {With a sunroof, Without a sunroof}
  
  number_of_possible_outcomes_of_sterio_system = 3 
  #Set S = {Sterio system 1, Sterio system 2, Sterio system 3}
  
  number_of_possible_outcomes_of_exterior_color = 4 
  #Set S = {Exterior color 1, Exterior color 2, Exterior color 3, Exterior color 4}
  
  total_no_of_outcome = number_of_possible_outcomes_of_automatic_transmission*
    number_of_possible_outcomes_of_sunroof*
    number_of_possible_outcomes_of_sterio_system*
    number_of_possible_outcomes_of_exterior_color
  
  cat("The sample space contains",total_no_of_outcome,"outcomes")
}

foo()
