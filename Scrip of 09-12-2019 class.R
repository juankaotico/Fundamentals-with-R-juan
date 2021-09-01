#LOOPS
vec <- c(1:5)
vec
for(x in vec) {print (x)}

#print while iteration 
word.vector <- c("a", "text", "consists","of")
for(word in word.vector) {print (word)}

vector.indices <- 1:length(word.vector)
vector.indices
for(i in vector.indices) {print(word.vector[i])}

#same but short
for(i in 1:length(word.vector)) {print(word.vector[i])}

#adding

for(i in 1:length(word.vector)) {print(paste("Element", i, "is", word.vector[i]))}

#lenght of a vector
vec <- c(1:10)
counter <- 0
for(x in vec) {counter <- counter + 1}
counter

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

p.norm(c(1, 2, 3), p=1)
p.norm(c(1, 2, 3))
p.norm(c(1, 2, 3), p=3)

## square elements of vector vec
square.vec <- function(vec)
{
  # initialize output vector vec.res
  vec.res <- vector()
  # fill vec.res with squared elements of vec
  for(x in vec) {vec.res <- c(vec.res, x^2)}
  return(vec.res)
}

square.vec(c(1,2,3))
square.vec(7:10)
(7:10)^2

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


#using the input command
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
getwd()
findwords("wordtext.txt")

  if(sort.by.freq)
  {
    # sort by word frequency
    return(word.list[order(sapply(word.list, length),
                           decreasing = T)])
  }else{
    # sort alphabetically
    return(word.list[sort(names(word.list))])
  }

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
findwords("wordtext.txt", sort.by.freq=T)

for(i in 59:61) {i-7}
vec <- c(2,4,6)
y <- c(1,1,1)
for(i in 1:3) {y[i] <- vec[i]+1}
y
for(i in 1:5) { v[i] <- i+2 }
for(dude in c("surfer", "boy")) nchar(dude)
a <- 0
b <- c(4,7,8)
for(k in b) a <- a+k^2
a
sum(b^2)
