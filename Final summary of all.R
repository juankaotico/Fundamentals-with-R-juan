###Intro-1

2+2
sqrt(4)
exp(-2)
cos(pi)
x<-2
y<-3
x
y
x+y
x*y
x*y+3
sqrt(x*y)+3
help.start()
help(sqrt)



_____________________________________________________________________________________________________________________________


###Vectors-2

#creation
person1.height <- 1.70
person1.weight <- 65
bmi.person1 <- person1.weight/person1.height^2
bmi.person1

person2.height <- 1.75
person2.weight <- 66
bmi.person2 <- person2.weight/person2.height^2
bmi.person2

person.height <- c(1.70, 1.75, 1.62)
person.weight <- c(65, 66, 61)
person.height
person.weight

person.height <- c(Can=1.70, Cem=1.75, Hande=1.62) 
person.weight <- c(Can=65, Cem=66,Hande=61)
person.height
person.weight

#indexing
person.height[1]
person.height[2]

person.height[c(T,F,T)]
person.height[c(1,3)]

person.height[c(1,1,3,2,3)]#duplicate

person.height[-1]#exclude
person.height[c(-1,-3)]

person.height[1] <- 1.72 #change values
person.height

person.height <- c(person.height[1:2], Lale=1.76, person.height[3]) #insert using index
person.height

person.height <- person.height[-3] #deleting with index
person.height

#Filtering
person.height > 1.65 #Bolean
person.taller <- person.height > 1.65
person.taller
person.height[person.taller]
person.height[person.height > 1.65] # complete filtering in one line

person.weight[person.weight > 65] <- (person.weight[person.weight > 65] - 1) #decrease 1 kilo people above 65
person.weight

which(person.height > 1.65) #return a vector with the index of the evaluation

#sorting
sort(person.height) #arrenge in cresendo
sort(person.weight)

sort(person.height, decreasing = TRUE) #decresendo
sort(person.weight, decreasing = TRUE)

person.height
order(person.height) #list of indexes of the values from less to max
person.weight[order(person.height)] #arrange weight acordint to height

#operations
person.weight[1] / person.height[1]^2 #single value
person.height^2 #whole vector
person.weight * 0.9
person.weight + c(1.5, 1.75, -0.5)
person.weight / person.height^2

bmi <- person.weight / person.height^2
person.weight <- person.weight * 0.9
person.weight

round(bmi) #round the numbers
round(bmi, digits=2)
ceiling(bmi) #smallest value not lesser than itself
floor(bmi) #bigger value contained
trunc(bmi) #round, transforming decimals to 0
signif(bmi, digits=1)#significant digits
signif(bmi, digits=2)
signif(bmi, digits=3)

mean(bmi)
length(bmi)
sd(bmi)

#recycling
c(1, 2, 3) + c(1, 2, 3, 4)

##Homework1
friends.height <- c(f1= 1.80, f2= 1.60, f3= 1.75, f4= 1.67, f5= 1.73)
friends.weight <- c(f1= 88, f2= 85, f3= 60, f4= 58, f5=100)
friends.height
friends.weight
friends.height <- c(friends.height, f6= 1.73, f7= 1.65, f8= 1.95, f9=1.45, f10=1.79)
friends.weight <- c(friends.weight, f6= 70, f7= 60, f8= 110, f9= 45, f10= 93)
friends.height
friends.weight
friends.weight[friends.weight >= 65]
friends.height[order(friends.weight)]
friends.bmi <- friends.weight/friends.height**2
friends.bmi
signif(friends.bmi, digits = 3)
friends.weight[friends.weight > 70] <- (friends.weight[friends.weight > 70] - (friends.weight[friends.weight > 70]*0.05))
friends.weight

#ifelse(test, yes, no)
person.height <- c(Can=1.70, Cem=1.75, Hande=1.62) 
ifelse(person.height>1.7, "tall", "small")
ifelse(person.height > 1.7, "huge", ifelse(person.height > 1.65, "tall", "small"))

#sequences
1:5 #from:to syntax
11:15
3:0
seq_1_100 <- 1:100

#seq(from (start), to(finish), by(increment), length.out(total number of elements), along.with) 
seq(5, 10)
seq(5, 10, 2) #by=2
seq(from=5, to=10, by=2) #correct syntax
seq(0, 1, length.out=5)
seq(0, 1, len=5)

#rep(x (vector), times = 1, length.out = NA, each = 1)
rep(1, 3)
rep(1:4, 2)
rep(1:4, each = 2)
rep(1:2,c(10,15))

##Homework2
seq(1.65, 1.90, by = 0.05)
rep(1:4, times = 3, each = 2)


______________________________________________________________________________________________________________________________





###Matrices-3

#vector with atribute of column and rows

y <- matrix(c(1,2,3,4),nrow=2,ncol=2) # default: byrow=FALSE --> filling in columns order
y

#access
y[,2] #second column
y[1,] #first row
y[1,2] #first row, second column

#naming
rownames(y) <- c("Row1", "Row2")
colnames(y) <- c("Col1", "Col2")
y

#creation by "gluing"
cbind(c(1,2), c(3,4))
rbind(c(1,2), c(3,4))

person.height.weight <- rbind(c(1.7,65), c(1.75,66), c(1.62,61))
rownames(person.height.weight) <- c("Can", "Cem", "Hande")
colnames(person.height.weight) <- c("Height", "Weight")
person.height.weight

y <- matrix(c(1,2,3,4),nrow=2,ncol=2)
y 
y <- cbind(c(11, 12), y) #adding a column
y

y <- matrix(c(1,2,3,4),nrow=2,ncol=2)
y
y <- rbind(c(11, 12), y) #adding a row
y

#recycling

z <- matrix(c(1:9),nrow=3)
z
cbind(10, z)
rbind(10, z)

#operations

y <- matrix(c(1,2,3,4),nrow=2,ncol=2)
y
t(y) #transposition
y
y*y #element by element multiplication
y%*%y # matrix multiplication
y*3 #escalar

#indexing
z <- matrix(c(1:9),nrow=3)
z
z[,c(2,3)]#column 2 and 3
z[c(1,2),]#first and second row
z[c(1,2),3]#first and second row of the third column
z[,-2]#eliminate second column
z
z[c(1:2), c(2:3)] <- matrix(c(20,21,22,23), nrow=2) #assing new values
z
z <- matrix(c(1:9),nrow=3)
z

#filtering
z > 3
greater3 <- z > 3
greater3
z[greater3]
z[z > 3]#only one line

z[z[,2] >= 5,]# show matrix composed by the values, where the elements in the second column are equal or bigger than 5

#funcitons
rowMeans(z)
colMeans(z)
rowSums(z)
colSums(z)

#apply(m (matrix),dimcode (1=rows, 2= columns),f(function),fargs(extra arguments))
z
apply(z,1,mean)
apply(z,2,sum)

AddOne <- function(x) {x+1} #customized function, takes whatever is in X and adds 1
AddOne(1)
AddOne(-5)
AddOne(c(1,2,3))

AddValue <- function(x, Addend=1) {x+Addend} #takes whatever is in X and add the second number (that from default is 1)
AddValue(1)
AddValue(1,2)
AddValue(c(1:3),2)

z
apply(z,1,AddValue) #adds 1 to the first row, and so.-....
apply(z,2,AddValue) # with columns

#transform
a <- c(1,2,3)
b <- as.matrix(a)
a
b
dim(z) #nrow (), and ncol()


##Homework

friends.height
friends.weight
mfriends.height <- as.matrix(friends.height)
mfriends.weight <- as.matrix(friends.weight)
mfriends.height
mfriends.weight
friends.matrix <- cbind(mfriends.height, mfriends.weight)
colnames(friends.matrix)<- c("height","weight")
friends.matrix
friends.bmi <- friends.weight/friends.height**2
friends.bmi
mfriends.bmi <- as.matrix(friends.bmi)
mfriends.bmi
friends.matrix <- cbind (friends.matrix, "BMI" = c(friends.bmi))
friends.matrix
friends.matrix[1:5,2] <- friends.matrix[1:5,2] + friends.matrix[1:5,2]*0.1 
friends.matrix
friends.matrix[6:10,2] <- friends.matrix[6:10,2] - friends.matrix[6:10,2]*0.05 
friends.matrix
friends.matrix[,3] <- friends.matrix [,2] / friends.matrix [,1]**2
friends.matrix
friends.matrix[,1]>1.7
friends.matrix [friends.matrix[,1]>1.7,]
friends.matrix [friends.matrix[,1]<1.75,]
smallmatrix <- friends.matrix [friends.matrix[,1]<1.75,]
smallmatrix
colMeans(smallmatrix)
IncreaseXpor <- function(x,Addend) {x+(x*Addend)}
DecreaseXpor <- function(x,Addend) {x-(x*Addend)}
friends.matrix
DecreaseXpor(friends.matrix[,2], 0.05)


_____________________________________________________________________________________________________________________________


###List-4


#creating a list
joe <- list("Joe", 55000, T)
joe
joe <- list(name="Joe", salary=55000, staff=T)
joe

#indexing
joe$salary
joe[[2]]
joe["salary"]

joe.sub <- joe[1:2]#sublist with 2 components of the main list
joe.sub

#adding new components
joe <- list(name="Joe", salary=55000, staff=T)
joe$age <- 39
joe[[5]] <- 1976
joe[6:7] <- c(TRUE, TRUE)
joe

#deleting
joe$salary <- NULL
joe$staff <- NULL
#everything moves up
joe

#concatenate
joe <- list(name="Joe", salary=55000, staff=T)
joe <- c(joe, list(age=39, 1976))
joe

#vector as part of the list
my.list <- list(vec1 = c(1,2), vec2 = c(3,4), vec3 = 5:7)
my.list

#iteration trought words
word.list <- list()
word <- "a"
i<- 1
word.list[[word]] <- c(word.list[[word]],i)
word.list
word <- "text"
i <- 2
word.list[[word]] <- c(word.list[[word]],i)
word.list
word <- "consists"
i <- 3
word.list[[word]] <- c(word.list[[word]], i)
word <- "of"
i <- 4
word.list[[word]] <- c(word.list[[word]], i)
word <- "a"
i <- 5
word.list[[word]] <- c(word.list[[word]], i)
word.list

#accessing list component
names(joe)
names(word.list)
words<- names(word.list) 
words
words.sorted <- sort(words)
words.sorted
word.list[words.sorted]

word.list[sort(names(word.list))]# all steps in one line

#obtains list values
unlist(joe)
unlist(word.list) #components are coerced to a common mode

# lapply(l, f, fargs) --> apply for lists--returns a list
lapply(word.list, length)
sapply(word.list, length) #applied to list, but returns a vector or matrix

#Example: sort word list by word frequency
word.freq <- sapply(word.list, length)
word.freq
word.freq.order <- order(word.freq)
word.freq.order
word.list[word.freq.order]

word.list[order(sapply(word.list, length))]#all the steps in one line

word.list[order(sapply(word.list, length), decreasing = T)] # revert the order


#Homework

word.list <- list()
word <- "a"
i<- 1
word.list[[word]] <- c(word.list[[word]],i)
word <- "text"
i <- 2
word.list[[word]] <- c(word.list[[word]],i)
word <- "consists"
i <- 3
word.list[[word]] <- c(word.list[[word]], i)
word <- "of"
i <- 4
word.list[[word]] <- c(word.list[[word]], i)
word <- "a"
i <- 5
word.list[[word]] <- c(word.list[[word]], i)
word <- "word"
i<- 6
word.list[[word]] <- c(word.list[[word]],i)
word <- "and"
i <- 7
word.list[[word]] <- c(word.list[[word]],i)
word <- "another"
i <- 8
word.list[[word]] <- c(word.list[[word]], i)
word <- "word"
i <- 9
word.list[[word]] <- c(word.list[[word]], i)
word <- "and"
i <- 10
word.list[[word]] <- c(word.list[[word]], i)
word <- "so"
i<- 11
word.list[[word]] <- c(word.list[[word]],i)
word <- "on"
i <- 12
word.list[[word]] <- c(word.list[[word]],i)
word <- "and"
i <- 13
word.list[[word]] <- c(word.list[[word]], i)
word <- "so"
i <- 14
word.list[[word]] <- c(word.list[[word]], i)
word <- "forth"
i <- 15
word.list[[word]] <- c(word.list[[word]], i)
word.list

lapply(word.list, length)
sapply(word.list, length)
word.list[sort(names(word.list))] #alphabetically
word.list[order(sapply(word.list, length))] #frequency

vec1 <- seq(from= 1.65, to=1.9, by=0.05)
vec1
vec2 <- c(rep(1:4, c(2,1,2,1)))
vec2
veclist <- list(vec1, vec2)
veclist
sapply(veclist, median)


___________________________________________________________________________________________________________________________


#Dataframes-5

#creation
person <- data.frame(height=person.height, weight=person.weight, member= c(TRUE, TRUE, FALSE), initial=c("C", "C", "H"))
person
person <- data.frame(height=person.height, weight=person.weight, member=T) #recycling
person


#accessing

#same as list
person[[1]] 
person[["height"]]
person$height

#and matrix
person[,1]
person[3,2]
person[c(1,2),]
person[c(1,2),3]

person[-3,]#excluding, like matrix
person[,-3]

#filtering with a bolean
person[person$height >= 1.7,]

#adding
person <- rbind(person, Lale=list(1.76, 64,T))
person
person <- cbind(person, initial=c("C", "C","H", "L"))
person
person$BMI <- person$weight /person$height^2
person

getwd()
getwd()

#data import
person.data <- read.table(header=TRUE, "test_table.txt", sep=",")
person.data

#modify
person.data$BMI <- person.data$Weight /person.data$Height^2
person.data
person.data$BMI <- round(person.data$BMI, 2)
person.data

person.data$above22.5 <- ifelse(person.data$BMI>22.5, T ,F)
person.data

#summary
summary(person.data)

#plotting
plot(person.data$Height, person.data$Weight)
plot(person.data$Height, person.data$Weight, pch=2, xlab="Height", ylab="Weight") #additional values

#Homework
data.friends <- read.table("friends_table.txt", header = TRUE, sep = ",", dec= ".")
data.friends
data.friends$bmi <- data.friends$weight/data.friends$height**2
data.friends
plot(data.friends$height, data.friends$weight, pch = 2, col = 1:2)


_______________________________________________________________________________________________________________________________


#Summary for midterm-6..............


______________________________________________________________________________________________________________________________



#Loops-7


# for(x in vec) {expression}  ----> basic form.
vec <- c(1:5)
for(x in vec) {print (x)} # for each "x" element in "vec" do "expresion"

word.vector <- c("a", "text", "consists", "of")
for(word in word.vector) {print (word)}
vector.indices <- 1:length(word.vector)
for(i in vector.indices) {print(word.vector[i])}

for(i in 1:length(word.vector)) {print(word.vector[i])} #all steps in one line

for(i in 1:length(word.vector)) {print(paste("Element", i, "is", word.vector[i]))} #concatenate strings




#functions with loops
vec <- c(1:10)
counter <- 0
for(x in vec) {counter <- counter + 1}
counter



#examples


## function to compute length of vector vec
vec.length <- function(vec)
{
  # initialize counter
  counter <- 0
  # iterate through vec and increase counter
  for(x in vec) {counter <- counter + 1}
  # return counter
  return(counter)
}

#test it
        vec.length(c(1:10))
        vec.length(c("Hande", "Cem", "Can"))

        
        
        
        
        
        
## compute Euclidean norm of a vector vec
Euclid.norm <- function(vec)
{
  # initialize norm
  norm <- 0
  # compute sum of squared vector elements
  for(x in vec) {norm <- norm + x^2}
  # sqrt of sum
  norm <- sqrt(norm)
  return(norm)
}

#test it

Euclid.norm(c(1, 2, 3))
sqrt(1^2+2^2+3^2)
Euclid.norm(c(sqrt(1), sqrt(3)))








## compute p-norm of a vector vec
p.norm <- function(vec, p=2)
{
  # initialize norm
  norm <- 0
  # compute sum of exponentiated vector elements
  for(x in vec) {norm <- norm + x^p}
  # p radical of sum
  norm <- (norm)^(1/p)
  return(norm)
}

#test it

p.norm(c(1, 2, 3), p=1)
p.norm(c(1, 2, 3))
p.norm(c(1, 2, 3), p=3)




#return vectors as well

## square elements of vector vec
square.vec <- function(vec)
{
  # initialize output vector vec.res
  vec.res <- vector()
  # fill vec.res with squared elements of vec
  for(x in vec) {vec.res <- c(vec.res, x^2)}
  return(vec.res)
}

#test it

square.vec(c(1,2,3))
square.vec(7:10)
(7:10)^2



#findwords function

## finds locations of each word in word.vec
findwords <- function(word.vec)
{
  # initialize word list
  word.list <- list()
  # iterate through word vector
  for(i in 1:length(word.vec))
  {
    # store current word in variable word
    word <- word.vec[i]
    # add current word to word.list
    word.list[[word]] <- c(word.list[[word]], i)
  }
  return(word.list)
}

findwords(c("a", "text", "consists", "of", "a"))
getwd()

#use the scan function to read plain text.....
word.vec <- scan("wordtext.txt", "")
word.vec

findwords(word.vec)


#add scan into the main function

## finds locations of each word in file
findwords <- function(file)
{
  # fill word.vec from data in file
  word.vec <- scan(file, "")
  # initialize word list
  word.list <- list()
  # iterate through word vector
  for(i in 1:length(word.vec))
  {
    # store current word in variable word
    word <- word.vec[i]
    # add current word to word.list
    word.list[[word]] <- c(word.list[[word]], i)
  }
  return(word.list)
}

findwords("wordtext.txt")

#frequency
word.list[order(sapply(word.list, length))]
#alphabetical
word.list[sort(names(word.list))]

#if (condition) {expression1} else {expression2}-----> if-else structure

x <- 2
y <- if(x == 2) x else x+1
y

x <- 3
y <- if(x == 2) x else x+1
y

#conditions of frequency or alphabetical
if(sort.by.freq)
{
  # sort by word frequency
  return(word.list[order(sapply(word.list, length),
                         decreasing = T)])
}else{
  # sort alphabetically
  return(word.list[sort(names(word.list))])
}



##combine evrything into one formula

## finds locations of each word in file
findwords <- function(file, sort.by.freq = F)
{
  # fill word.vec from data in file
  word.vec <- scan(file, "")
  # initialize word list
  word.list <- list()
  # iterate through word vector
  for(i in 1:length(word.vec))
  {
    # store current word in variable word
    word <- word.vec[i]
    # add current word to word.list
    word.list[[word]] <- c(word.list[[word]], i)
  }
  # sort by word frequency or else sort alphabetically
  if(sort.by.freq) {return(word.list[order(sapply(word.list, length),
                                           decreasing = T)])} else {return(word.list[sort(names(word.list))])}
}


findwords("wordtext.txt")

findwords("wordtext.txt", sort.by.freq = T)



#plotting
word.list <- findwords("wordtext.txt", sort.by.freq=T)
word.freq <- sapply(word.list, length)
word.freq
barplot(word.freq, las=2)


#example wikipedia
findwords("R_wikipedia.txt")
word.list <- findwords("R_wikipedia.txt", sort.by.freq = T)
word.freq <- sapply(word.list, length)
word.freq
barplot(word.freq[1:20], las=2)



#Homework
#1.
## sum elements of vector vec
sum.vec <- function(vec)
{
  # initialize output vector vec.res
  vec.res <- 0
  # fill vec.res with sum of elements of vec
  for(x in vec) {vec.res <- vec.res+x }
  return(vec.res)
}

sum.vec(c(10,4.8,30,50))


#2


z <- matrix(c(1:9),nrow=3)
z





## square elements of vector vec
mean.matrix <- function(m)
{
  return(c("mean.rows" = apply(m, 1, mean), "mean.cols" = apply(m, 2, mean)))
}

mean.matrix(z)

_____________________________________________________________________________________________________________________________


#Loops continued-8

#nested loops --> a loop inside a loop

for(i in 1:2) #for each i a whole j is made
{
  for(j in 1:3)
  {
    print(paste("outer", i, "inner", j))
  }
}


string <- ""  #use the i of the outer loop for counting
for(i in 1:5)
{
  for(j in 1:i)
  {
    string <- paste(string, j)
  }
  print(string)
  string <- ""
}


#another type of loop
#while(condition) {expression}

i <- 1
while(i<5) {i <- i+1} #while i < 5 do the expresion
i

#iterate while printing
vec <- c(7:11)
i <- 1
while(i <= length(vec))
{
  print (vec[i])
  i <- i+1
}

#compared to for....
vec <- c(1:5)
for(x in vec) {print (x)}


#extra
vec <- c(7:11)
i <- 1
while(i <= length(vec))
{
  print (paste("Element", i, "is", vec[i]))
  i <- i+1
}


#recap of Euclidean with for

## compute Euclidean norm of a vector vec
Euclid.norm <- function(vec)
{
  # initialize norm
  norm <- 0
  # compute sum of squared vector elements
  for(x in vec) {norm <- norm + x^2}
  # sqrt of sum
  norm <- sqrt(norm)
  return(norm)
}

#euclidean with while ---> takes longer for extra operations

## compute Euclidean norm of a vector vec
Euclid.norm2 <- function(vec)
{
  # initialize norm
  norm <- 0
  # compute sum of squared vector elements
  i <- 1
  while(i <= length(vec))
  {
    norm <- norm + vec[i]^2
    i <- i + 1
  }
  # sqrt of sum
  norm <- sqrt(norm)
  return(norm)
}


#break -----> break the loop after one iteration

i <- 1
while(i < 10)
{
  i <- i + 1
  break
}
i

#control the break with an "if"
i <- 1
while(TRUE)
{
  i <- i + 1
  if(i >= 10) {break}
}
i


#quiz while loop

#1st iteration
quiz <- function()
{
  answer <- 0
  while(answer != 37)
  {
    answer <- readline("How many students are registered for
this course? ")
    answer <- as.numeric(answer)
  }
  print("Congratulations, 37 is the right number.")
}

quiz()
12
28
37

#2dn iteration --> enhancing with limits and clues

quiz <- function()
{
  answer <- 0
  while(answer != 37)
  {
    answer <- readline("How many students are registered for
this course? ")
    answer <- as.numeric(answer)
    if(answer < 37) {print("No, more students.")}
    if(answer > 37) {print("No, less students.")}
  }
  print("Congratulations, 37 is the right number.")
}
quiz()
20
40
36
37


#random numbers with while

plot(rnorm(1000))

rnd.vec <- rnorm(1000)
length(rnd.vec[rnd.vec>0]) #positive numbers
length(rnorm(1000)[rnorm(1000)>0])

#random numbers forloop

rnd.numbers.above0 <- function(iterations=1000)
{
  nr.above0 <- vector()
  for(i in 1:iterations)
  {
    # generate 1000 normal distributed random numbers
    rnd.vec <- rnorm(1000)
    # save number of positive random numbers
    nr.above0 <- c(nr.above0, length(rnd.vec[rnd.vec>0]))
  }
  return(mean(nr.above0))
}

rnd.numbers.above0()
rnd.numbers.above0(20)
rnd.numbers.above0(d)
rnd.numbers.above0(2000)



#random nomber whileloop
i <- 1
rnd.vec <- vector()
while(TRUE)
{
  # generate a single random number
  rnd.number <- rnorm(1)
  # if random number is positive add it to vector rnd.vec
  if(rnd.number > 0)
  {
    rnd.vec <- c(rnd.vec, rnd.number)
    i <- i + 1
  }
  # exit after 10 positive random number
  if(i >= 10) {break}
}

rnd.vec

#transferin the above into a function

### generate n positive random numbers
positive.rnd.numbers <- function(n=1000)
{
  i <- 1
  rnd.vec <- vector()
  while(TRUE)
  {
    # generate a single random number
    rnd.number <- rnorm(1)
    # if random number is positive add it to vector rnd.vec
    if(rnd.number > 0)
    {
      rnd.vec <- c(rnd.vec, rnd.number)
      i <- i + 1
    }
    # return rnd.vec after n positive random number
    if(i > n) {return(rnd.vec)}
  }
}

#plotting
plot(positive.rnd.numbers(1000))


#repeat loop ---> excecuted until stop with a break ------> can be exchanged with "while(TRUE)"
i <- 1
repeat
{
  i <- i + 1
  if(i >= 10) {break}
}
i


### generate n positive random numbers
positive.rnd.numbers <- function(n=1000)
{
  i <- 1
  rnd.vec <- vector()
  repeat #Here is the change compare to the previous one
  {
    # generate a single random number
    rnd.number <- rnorm(1)
    # if random number is positive add it to vector rnd.vec
    if(rnd.number > 0)
    {
      rnd.vec <- c(rnd.vec, rnd.number)
      i <- i + 1
    }
    # return rnd.vec after n positive random number
    if(i > n) {return(rnd.vec)}
  }
}


#"Next" skip what is after it and go to the next iteration
for(i in 1:3)
{
  print("a")
  next
  print("b")
}


#enhance
### generate n positive random numbers
positive.rnd.numbers <- function(n=1000)
{
  i <- 1
  rnd.vec <- vector()
  repeat
  {
    # generate a single random number
    rnd.number <- rnorm(1)
    # if random number is negative proceed with next iteration
    if(rnd.number < 0) {next} #instead of checking if it is positive and added, if is negative, it is skipped
    rnd.vec <- c(rnd.vec, rnd.number)
    i <- i + 1
    # return rnd.vec after n positive random number
    if(i >= n) {return(rnd.vec)}
  }
}


##Homework

#1

#example with for
sum.vec <- function(vec)
{
  # initialize output vector vec.res
  vec.res <- 0
  # fill vec.res with sum of elements of vec
  for(x in vec) {vec.res <- vec.res+x }
  return(vec.res)
}


sum.vec(c(10,4.8,30,50))



#while loop

sum_of_vec <- function(vec)
{
  i <- 1
  while(TRUE)
  {
    #create  
    sum_of_numbers <- 0
    while (i <= length (vec)) {
      
    
    sum_of_numbers <- c(sum_of_numbers +vec[i])
      i <- i + 1
    }
    
    return(sum_of_numbers)
  }
}

sum_of_vec(c(10,4.8,30,50,10))

#2 replace wht while with a repeat

sum_of_vec <- function(vec)
{
  i <- 1
  repeat
  {
    #create  
    sum_of_numbers <- 0
    while (i <= length (vec)) {
      
      
      sum_of_numbers <- c(sum_of_numbers +vec[i])
      i <- i + 1
    }
    
    return(sum_of_numbers)
  }
}

sum_of_vec(c(10,4.8,30,50,10,28))


#3 quiz with repeat


quiz.repeat <- function()
{
  answer <- 0
  repeat
  {
    answer <- readline("How many students are registered for
this course? ")
    answer <- as.numeric(answer)
    if(answer < 37) {print("No, more students.")}
    if(answer > 37) {print("No, less students.")}
    if(answer == 37) {print("Congratulations, 37 is the right number.")}
    if(answer == 37) {break}
  }
}
quiz.repeat()
20
25
45
37


#4 random negative numbers

negative.rnd.numbers <- function(n=1000)
{
  i <- 1
  rnd.vec <- vector()
  repeat
  {
    # generate a single random number
    rnd.number <- rnorm(1)
    # if random number is positive proceed with next iteration
    if(rnd.number > 0) {next}
    rnd.vec <- c(rnd.vec, rnd.number)
    i <- i + 1
    # return rnd.vec after n positive random number
    if(i >= n) {return(rnd.vec)}
  }
}

plot(negative.rnd.numbers(1000))


_____________________________________________________________________________________________________________________________


#Graphics-9


person.data
plot(person.data[,2:5])

plot(person.data[,2:5], col=ifelse(person.data$above22.5, "red", "green")) #color the plot

#histogram
rnorm1000 <- rnorm(1000)
barplot(rnorm1000)
hist(rnorm1000)

#modify the bins 
hist(rnorm1000, breaks=seq(-4, 4, 1))
hist(rnorm1000, breaks=seq(-4, 4, 0.25))

hist(positive.rnd.numbers())




#figure array
rnorm1000 <- rnorm(1000)

#"par" creates a "matrix" of figures
#par(mfrow=c(nr, nc)) ---> organized by "rows" (mfcol= by "columns")
#par(mfcol=c(nr, nc)) ---> in a matrix with "nr" rows and "nc" columns
par(mfrow=c(1,2)) 
plot(rnorm1000)
hist(rnorm1000)
par(mfrow=c(1,1)) #----> set to normal

rnorm1000 <- rnorm(1000)
pos.rnorm1000 <- positive.rnd.numbers(1000)
par(mfrow=c(2,2))
plot(rnorm1000)
hist(rnorm1000)
plot(pos.rnorm1000)
hist(pos.rnorm1000)
par(mfrow=c(1,1))


#same but changing the limits
par(mfrow=c(2,2))
plot(rnorm1000, ylim=c(-4,4))
hist(rnorm1000, breaks=seq(-4,4,1))
plot(pos.rnorm1000, ylim=c(-4,4))
hist(pos.rnorm1000, breaks=seq(-4,4,1))
par(mfrow=c(1,1))


#other example
par(mfrow=c(1,2))
plot(person.data$Height, person.data$Weight, pch=2)
lines(c(1.62, 1.78), 22.5*c(1.62, 1.78)^2)
hist(person.data$BMI, breaks=seq(18.5, 28.5, 2))
par(mfrow=c(1,1))


#Homework

#1
data.friends <- read.table("friends_table.txt", header = TRUE, sep = ",")
data.friends
data.friends$bmi <- data.friends$weight/data.friends$height**2
data.friends
data.friends$bmi <- round(data.friends$bmi, digits = 2)
data.friends

#2
plot(data.friends$height, data.friends$weight, pch=2, col = c("red", "blue"))

#3
hist(data.friends$height, breaks = seq(1,2,0.02))
hist(data.friends$weight)
hist(data.friends$bmi)

#4
par(mfrow=c(1,2))
plot(data.friends$height, data.friends$weight)
hist(data.friends$bmi)
par(mfrow=c(1,1))


_____________________________________________________________________________________________________________________________


#Graphics continued - 10

#Boxplot ----> "box-and-whiskers plot"

#The box in the middle indicates first quartile, median, and third quartile
#The lines ("whiskers") show the largest or smallest observation 
  #that falls within a distance of 1.5 times the box size from the nearest quartile
#If any observations fall farther away, the additional points are considered "extreme" values and are shown separately

#extra
### generate n positive random numbers
positive.rnd.numbers <- function(n=1000)
{
  i <- 1
  rnd.vec <- vector()
  while(TRUE)
  {
    # generate a single random number
    rnd.number <- rnorm(1)
    # if random number is positive add it to vector rnd.vec
    if(rnd.number > 0)
    {
      rnd.vec <- c(rnd.vec, rnd.number)
      i <- i + 1
    }
    # return rnd.vec after n positive random number
    if(i > n) {return(rnd.vec)}
  }
}

rnumbers <- data.frame(rnorm1000=rnorm(1000), pos.rnorm1000=positive.rnd.numbers(1000))
head(rnumbers)
summary(rnumbers)

#plotting
par(mfrow=c(1,2))
boxplot(rnumbers$rnorm1000)
boxplot(rnumbers$pos.rnorm1000)
par(mfrow=c(1,1))

#setting the limits
par(mfrow=c(1,2))
boxplot(rnumbers$rnorm1000, ylim=c(-4,4))
boxplot(rnumbers$pos.rnorm1000, ylim=c(-4,4))
par(mfrow=c(1,1))

#only in boxplots
boxplot(rnumbers$rnorm1000, rnumbers$pos.rnorm1000)

#stripchars ---> one dimensional scatter plots
stripchart(list(rnumbers$rnorm1000,rnumbers$pos.rnorm1000))
stripchart(list(rnumbers$rnorm1000,rnumbers$pos.rnorm1000), method="jitter") #jitter appile them all

#pie charts
#using findwords
pie(word.freq[1:10])
pie(word.freq[1:10], col= rainbow(10)) #---> change colors

#caffeine-matrix
caff.marital <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67),nrow=3,byrow=T)
caff.marital
colnames(caff.marital) <- c("0","1-150","151-300",">300")
rownames(caff.marital) <-c("Married","Prev.married","Single")

caff.marital[1,]#first row
caff.marital["Married",]#The same

pie(caff.marital["Married",], main="Married")

par(mfrow=c(1,3))
pie(caff.marital["Married",],main="Married")
pie(caff.marital["Prev.married",],main="Previously married")
pie(caff.marital["Single",], main="Single")
par(mfrow=c(1,1))

#other example
sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(sales) <- c("Blueberry", "Cherry", "Apple", "Boston Cream", "Other", "Vanilla Cream")
sales

pie(sales)
pie(sales, col = c("purple", "violetred1", "green3", "cornsilk", "cyan", "white")) #Change colors
pie(sales, col = gray(seq(0.4, 1.0, length= 6))) #grayscale


#Homework
data.friends

#1
boxplot(data.friends$height, data.friends$weight, data.friends$bmi)
boxplot(data.friends$height)
boxplot(data.friends$weight)
boxplot(data.friends$bmi)


_____________________________________________________________________________________________________________________________


#Input and Output -11


#read.table () --> read from a txt.file and create a TABLE
      
        #person.data <- read.table(header=TRUE,"height_weight_data.txt", sep=",")

#scan () ---> creates a VECTOR of what is it on the text

        #word.vec <- scan("text.txt", what="")

#readline () -----> read the command of the user

        #answer <- readline("How many students are registered for this course? ")


#more about scan

#By default, scan() assumes that the items of the vector are separated by whitespace, which includes blanks, carriage
      #return/line feeds, and horizontal tabs.

#scan("f3.txt", what="", sep="\n")  -----> each line is one string

v <- scan("") #---> read from the keyboard
1
2 3 4
2 3
234
v

#readline
readline()
This lines is gonna be saved
readline("popo ")
es feo


#read into a matrix
matrix(scan("height_weight.txt"), ncol=2, byrow=TRUE) # read a vector and transform it into a matrix
#or
as.matrix(read.table("height_weight.txt")) # read a data frame and transform it into a matrix

#readLines() ===== to scan() with sep ="\n" (read each line)


#example of internet
#flowers
iris.flower <-read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data", sep=",")
iris.flower
head(iris.flower)
colnames(iris.flower) <- c("Sepal.Length","Sepal.Width", "Petal.Length", "Petal.Width","Species")
plot(iris.flower)
iris.flower$color <- ifelse(iris.flower$Species ==
                              "Iris-setosa", "red", ifelse(iris.flower$Species ==
                                                             "Iris-versicolor", "green", "blue"))
plot(iris.flower[,1:4], col=iris.flower$color)

iris.flower[iris.flower$Petal.Length < 2.5,]

#book
word.list <-findwords("https://ia800908.us.archive.org/6/items/alicesadventures19033gut/19033.txt", sort.by.freq=T)
word.freq <- sapply(word.list, length)
barplot(word.freq[1:20], las=2, main="Alice's Adventures in Wonderland")

word.list <-findwords("https://ia800707.us.archive.org/23/items/theadventuresoft00074gut/old/sawyr11.txt", sort.by.freq=T)
word.freq <- sapply(word.list, length)
barplot(word.freq[1:20], las=2, main="The Adventures of Tom Sawyer")


#write.table() -------> similar to read input, but creates a file in the pc

person.data
write.table(person.data, "height_weight_data2.txt")





















