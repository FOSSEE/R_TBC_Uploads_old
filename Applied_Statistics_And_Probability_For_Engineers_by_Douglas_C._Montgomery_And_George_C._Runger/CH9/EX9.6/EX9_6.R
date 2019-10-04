#Golf Club Design(Pg no. 334)

foo =  function()
{
  obs = c(0.8411,0.8580,0.8042,0.8191,0.8532,0.8730,0.8182,0.8483,0.8282,0.8125,0.8276,0.8359,0.8750,0.7983,0.8660)
  ans = t.test(obs, mu = 0.82, alternative = "greater")
  p_value = ans$p.value
  
  if(0.005<p_value && p_value<0.01)
  {
    print("Null hypothesis rejected  and hence the mean coefficient of restitution exceeds 0.82")
  }
  else
  {
    print("Unable to reject the null hypothesis")
  }
}
foo()