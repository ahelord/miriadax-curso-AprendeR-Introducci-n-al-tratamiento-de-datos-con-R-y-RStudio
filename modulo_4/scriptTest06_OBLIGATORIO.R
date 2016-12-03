str(CO2)
CO2[45,c('conc')]
View(CO2)
CO2.BK=CO2
CO2.bk$$Treatment=as.character(CO2.bk$$Treatment)
#IMPORT POR URL https://miriadax.net/documents/28098821/74010125/heartatk4R.txt/fd3fc548-6824-44d4-bc54-3abfaf1c4501
womanDS <- read.csv("/tmp/RtmpT75ob0/data25c866831be4", sep="")
str(womanDS)
newWoman=womanDS[womanDS$SEX=="F" & womanDS$DIED==1, ]
str(newWoman)
DNase.bk=DNase
str(DNase.bk)
nuevas.filas=data.frame(Run=c(5), conc=c(0.5), density=c(2.3))
newDNase.bk=rbind(DNase.bk, nuevas.filas)
newDNaseRun=newDNase.bk[newDNase.bk$Run==5,3]
View(newDNaseRun)
head(newDNaseRun)
str(newDNaseRun)
mean(newDNaseRun)
round(mean(newDNaseRun),4)
YearDS <- read.csv("/tmp/RtmpT75ob0/data25c8205af2ee", sep="")
 View(YearDS)
 str(YearDS)
maxBH= max(YearDS$BH)
maxBH
newYearDS=YearDS[YearDS$BH==maxBH,5]
 #IMPORT POR URL https://miriadax.net/documents/28098821/74010125/ESD.txt/3df7def5-8cb8-49c9-ba4c-5e7ab1a1423e
otherYearDS <- read.csv("/tmp/RtmpT75ob0/data25c83df55bdd", sep="")
 View(otherYearDS)
 str(otherYearDS)
 media_bh=aggregate(BH~Year, data=otherYearDS, FUN=mean, na.rm=TRUE)
 head(media_bh)
 