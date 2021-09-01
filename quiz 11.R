palette()
plot(rate~conc, data=Puromycin, col=(c(3,4)), pch=16, las=1)
legend ("bottomright", levels(Puromycin$state), col= (c(3,4)), pch=16)


chickwts
tapply(chickwts, index, function)

fake <- read.table("data/complicated.txt", skip= 6, header = T, sep = "\t", dec=",")
fake


iris$Sepal.Length
colnames(iris)
h_values <- hist(iris$Sepal.Length, plot=TRUE)


mortality <- read.table("mortality.txt", header = TRUE, sep = "", dec=".", stringsAsFactors = FALSE)
mortality
class(mortality)
typeof(mortality)

which.min(mortality[,-1])


expenditure <- read.table("expenditure.txt", skip= 7, header = TRUE, sep = "", dec =".")
expenditure

expenditure$X.2015 <- as.numeric(gsub(",",".", expenditure$X.2015))
expenditure$X.2014 <- as.numeric(gsub(",",".", expenditure$X.2014))
expenditure$X.2013 <- as.numeric(gsub(",",".", expenditure$X.2013))
expenditure


insurances <- read.csv ("insurances.csv", na.strings = "unknown")
insurances
insurances

write.table (insurances, "insurances.txt", sep = "\t")


min_mortality <- which.min(lapply (mortality, as.numeric)
min_mortality
mortality$neonatal_urban <- as.numeric(mortality$neonatal_urban)
mortality$neonatal_rural<- as.numeric(mortality$neonatal_rural)
mortality$infant_urban<- as.numeric(mortality$infant_urban)
mortality$infant_rural<- as.numeric(mortality$infant_rural)
mortality$underfive_urban<- as.numeric(mortality$underfive_urban)
mortality$underfive_rural<- as.numeric(mortality$underfive_rural)

min_mortality <- which.min(mortality[,2:6])

which.min(mortality$neonatal_rural)
lapply(mortality, min)


malaria <- read.table("malaria_funding.txt", header = TRUE, sep = "", dec =".")
malaria
malaria_avg <- colMeans(malaria[,2:4], na.rm = TRUE, dims = 1)
malaria_avg
