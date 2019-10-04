#Surface Finish(Pg no. 520)

x2 = c(225,200,250,245,235,237,265,259,221,218,224,212,248,260,243,238,224,251,232,216)
y = c(45.44,42.03,50.10,48.75,47.92,47.79,52.26,50.52,45.58,44.78,33.50,31.23,37.52,37.13,34.70,33.92,32.13,35.47,33.49,32.29)
tool = c(rep.int(302,10),rep.int(416,10))

df = data.frame("surface" = y, "rpm" = x2, "tool" = tool)
df$tool.f = factor(df$tool)
is.factor(df$tool.f)
df$tool.f[1:20]
model = lm(surface ~ rpm+tool.f, data = df)

cat("the fitted regression model is y =",coef(model)[1],"",coef(model)[2],"x +",coef(model)[3],"x^2")