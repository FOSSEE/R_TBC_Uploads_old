#Camera flash(Pg no. 18)
foo<-function(){
  min_recycle_time = 1.5
  max_recycle_time = 5
  x<-readline(prompt="Enter 1: " )
  if(min_recycle_time<x && x<max_recycle_time)
  {
    print("Outcome of Set S={low, medium,high} is medium")
    print("Outcome of Set S={yes, no} is yes")
  } else if(min_recycle_time >= x)
  {
    print("Outcome of Set S={low, medium,high} is low")
    print("Outcome of Set S={yes, no} is no")
  } else if(max_recycle_time <= x)
  {
    print("Outcome of Set S={low, medium,high} is high")
    print("Outcome of Set S={yes, no} is no")
  }
}

foo()