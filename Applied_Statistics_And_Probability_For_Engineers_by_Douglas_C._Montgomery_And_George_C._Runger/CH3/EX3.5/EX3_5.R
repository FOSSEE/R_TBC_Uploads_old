#Wafer contamination(Pg no. 68)
foo = function()
  {
    p = 0.01 #contaminent present
    a = 1 - p #contaminent absent
    x = readline(prompt = "Enter x:")
    x = as.integer(x)
    if (x>=1)
      {
        px = (a^(x-1))*p
        cat("probability P( X =",x,") is ",px)
    }
    else
    {
      cat("Error! input must be >=1")
    }
   
}

foo()