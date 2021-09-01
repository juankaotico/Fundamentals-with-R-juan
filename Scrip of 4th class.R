#Lists
joe <- list("Joe", 55000, T)
joe
joe <- list(name="Joe", salary=55000, staff=T)
joe
#for accessing a data on the list use "$" or "[[]]" 
#otherwhise you are accessing a sublist with the type
#of element
joe$salary
joe["salary"]
#sublist based in the previous list
joe.sub <- joe[1:2]
joe.sub
joe
#adding
joe$age <- 39
joe[[5]] <- 1976
joe[6:7] <- c(T,T)
joe
#deleting
joe$salary <- NULL
joe
#adding with concatanation
joe <- c(joe, list(salary=55000))
joe
mylist <- list(vec1=c(1,2), vec2=c(3,4), vec3=5:7)
mylist
#example of word list
word.list <- list()
word <- "a"
i <- 1
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
#accessing the components
names(joe)
names(word.list)
words <- names(word.list)
words
words.sorted <- sort(words)
words.sorted
word.list[words.sorted]
#above is equal to
word.list[sort(names(word.list))]
#accessing  list values
unlist(joe)
unlist(word.list)
#lapply is apply for list (to each component and
#and another list is returned)
lapply(word.list, length)
#sapply is lapply but returns vector or a matrix
sapply(word.list, length)
word.freq <- sapply(word.list, length)
word.freq
word.freq.order <- order(word.freq)
word.freq.order #This is the order of frequency or apperance from the smallest to the larger one
word.list[word.freq.order]
#the same as 
word.list[order(sapply(word.list, length))]
help("data.frame")
