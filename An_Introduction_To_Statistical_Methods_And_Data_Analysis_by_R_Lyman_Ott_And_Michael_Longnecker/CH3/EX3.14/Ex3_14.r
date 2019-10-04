crime_rate=c(876,578,718,388,562,971,698,298,673,537,642,856,376,508,529,393,354,735,811,504,807,719,464,410,491,557,771,685,448,571,189,661,877,563,647,447,336,526,624,605,496,296,628,481,224,868,804,210,421,435,291,393,605,341,352,374,267,684,685,460,466,498,562,739,562,817,690,720,758,731,480,559,505,703,809,706,631,626,639,585,570,928,516,885,751,561,1020,592,814,843)
  
lower_quartile= 464.5
upper_quartile=718.5 # calculated in previous example
 
iqr=IQR(crime_rate)

lower_inner_fence= lower_quartile - (1.5*iqr)
upper_inner_fence= upper_quartile + (1.5*iqr)
lower_outer_fence= lower_quartile - (3*iqr)
upper_outer_fence= upper_quartile +(3*iqr)
print(lower_inner_fence)
print(upper_inner_fence)
print(lower_outer_fence)
print(upper_outer_fence)

