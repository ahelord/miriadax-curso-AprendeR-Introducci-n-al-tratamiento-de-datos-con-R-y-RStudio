x =c (1 ,2 ,3,4 ,5,6 ,7,8)
y = c(-0.41,-3.8,-6.32,-9.98,-11.86,-15.55,-18.2,-21.74)
datos1=data.frame(x,y)
plot(datos1$x,datos1$y)
regresion = lm(y~x,data = datos1)
regresion
summary(regresion)
abline(regresion)
