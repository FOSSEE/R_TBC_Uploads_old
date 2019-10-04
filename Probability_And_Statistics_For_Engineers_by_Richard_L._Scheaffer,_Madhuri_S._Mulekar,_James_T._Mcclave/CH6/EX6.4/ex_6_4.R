a = function(x){
  if(x<0){
    0
  } else if(x>=0 && x<=1){
    x
  } else if(x>=1 && x<=2){
    0.5
  } else {
    0
  }
}

cat("the probability that demand will exceed 150 gallons on a given week",integrate(Vectorize(a),1.5,2)$value)
