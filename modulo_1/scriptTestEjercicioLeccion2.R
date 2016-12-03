feromona=c(0.1, 1, 5, 10, 100)
machos_atraidos=c(3, 6 ,9 ,11 ,20)
dfPlaga=data.frame(feromona,machos_atraidos)
plot(dfPlaga)
plot(dfPlaga,log="y")
plot(dfPlaga,log="xy")
summary(lm(log10(machos_atraidos)~log10(feromona),data=dfPlaga))$r.squared
summary(lm(log10(machos_atraidos)~log10(feromona),data=dfPlaga))
a=10^0.762749

curve(a*x^0.273509, add=TRUE)
#(50/5.7909)=x^0.273509
respuesta=8.634236^(1/0.273509)