
#Exercise1: Create a word list from the full text 
# "a text consists of a word and another word and so on and so forth" 
# using the helper variables word and i as shown in the lecture

#Creating empty list
Homeworklist <- list()

#Creating counter
counter <- i

#Creating list Entry #1 for word "a"
i <- 1
wort <- "a"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

#[...]

i <- 2
wort <- "text"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 3
wort <- "consists"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 4
wort <- "of"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 5
wort <- "a"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 6
wort <- "word"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 7
wort <- "and"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 8
wort <- "another"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

i <- 9
wort <- "word"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

i <- 10
wort <- "and"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

i <- 11
wort <- "so"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

i <- 12
wort <- "on"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

i <- 13
wort <- "and"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 14
wort <- "so"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)
i <- 15
wort <- "fourth"
Homeworklist[[wort]] <- c(Homeworklist[[wort]], i)

Homeworklist

#Exercise2 Sorting by frequency

names(Homeworklist)

#Word counting
sapply(Homeworklist, length)
lapply(Homeworklist, length)

#sorting words
wordssortfrq <- sort(sapply(Homeworklist, length), decreasing = TRUE)

wordssortfrq

# Exercise2 Sorting by name

alphabet <- sort(names(Homeworklist), decreasing = TRUE)
alphabet

# Vector with seq()
vec1 <- c(seq(from= 1.65, to=1.9, by=0.05))
vec2 <- c(rep(1:1, times=2 ), seq(1,4, by=1))
vec2

# vector in liste
veclist <- list(Vector1=vec1, Vector2=vec2)
sapply(veclist, FUN=median)

# trying random stuff
rep(1:1, times=2 )
?rep

matsamp <- matrix(data=c(1:20), nrow=5, byrow=TRUE)
matsamp[1:2,]

matsamp2 <- matrix(data=c(1:20), nrow=4)
cbind(matsamp, matsamp2)
