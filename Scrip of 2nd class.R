person.height <- c(1.70, 1.75, 1.62)
person.weight <- c(65,66,61)
person.height
person.weight
person.height <- c(person.height,1.50)
person.height
person.weight <- c(person.weight, NA)
person.weight
person.height <- c(per1=1.70, per2= 1.75, per3= 1.62)
person.height
person.weight <- c(per1=65,per2=66,per3=61)
person.weight
person.height[2]

person.height[c(1,2)]
person.weight[-3]
person.height[2] <- 1.80
person.height
person.height <- c(person.height[1:2], per2.5=1.75, person.height[3])
person.height
person.height <- person.height[-3]
person.height
person.height<1.74
person.small <- person.height < 1.70
person.small
person.height[person.small]
person.weight
person.weight[person.weight>62] <- person.weight[person.weight>62] - 2
person.weight
person.weight <- c(per1=65,per2=66,per3=61)
person.weight[person.weight>62] <- person.weight[person.weight>62] - 2
person.weight
which(person.height>1.60)
person.small
sort(person.height)
sort(person.height, F)
sort(person.height, T)
order(person.height)
person.weight[1]/person.height[1]**2
person.height**2
person.weight*0.9
person.weight+(person.weight*0.1)
person.weight/person.height**2
BMI <- person.weight/person.height**2
BMI
round(BMI)
signif(BMI, digits = 3)
mean(BMI)
length(BMI)
sd(BMI)
c(1,2,3)+c(1,2,3,4)

ifelse(person.height>1.7, "tall", "small")
1:6
seq(1,6)
seq(1,6,2)
seq(1,6, len= 20)
