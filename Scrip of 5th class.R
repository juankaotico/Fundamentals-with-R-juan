person <- data.frame(height=person.height,weight=person.weight, initial=c("C", "C", "H"))
person
person$height
#Accessing
person[,1]
person[2,2]
person[c(1,2),]
#Boolean evaluation
person[person$height >= 1.7,]
#adding
person <- cbind(name= c("Can", "Cem", "Hande"), person)
person
person$BMI <- person$weight/person$height**2
person
#look the path of the powrking directory
getwd()
#call data from it
person.data <- read.table(header = T, "test table", sep = ",")
person.data
#add columns as well
person.data$BMI <- person.data$Weight/person.data$Height**2
person.data
person.data$BMI <- round(person.data$BMI, 2)
person.data
#create a column while using ifelse
person.data$above22.5 <- ifelse(person.data$BMI>22.5, T,F)
person.data
summary(person.data)
#plotting
plot(person.data$Height, person.data$Weight)
#adding features to the plot
plot(person.data$Height, person.data$Weight, pch=2, xlab = "Height", ylab = "Weight")
