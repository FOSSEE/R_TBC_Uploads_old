alpha1 = 0.4; 
plane_in_region1 = 1/3;
plane_in_region2 = 1/3;
plane_in_region3 = 1/3;
prob1 = (alpha1*plane_in_region1)/((alpha1*plane_in_region1)+ 1*plane_in_region2 + 1*plane_in_region3);
prob2 = (1*plane_in_region2)/((alpha1*plane_in_region1)+ 1*plane_in_region2 + 1*plane_in_region3);
cat("The probability that the planes is in region 1 given that the search of region 1 did not uncover it ",prob1)
cat("The probability that the planes is in region 2/3 given that the search of region 1 did not uncover it ",prob2)