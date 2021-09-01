#creating a matrix
y <- matrix(c(1,2,3,4),nrow = 2, ncol = 2)
y
#accessing location in the matrix
y[,1]
y[2,2]
#the columns are filled first
y <- matrix(c(1,2,3,4),nrow = 2, ncol = 2, byrow = T) # the filling is shiffted
y
y <- matrix(c(1,2,3,4),nrow = 3)
y
#give names
rownames(y) <- c("p1", "p2", "p3")
colnames(y) <- c("l1", "l2")
y
#assig elements individually
y <- matrix(nrow = 2, ncol = 2)
y[1,1] <- 4
y
#"glue"
cbind(c(1,2),c(3,4))
rbind(c(1,2),c(3,4))
person.height.weight <- rbind(c(1.7,65), c(1.75,66), c(1.62,61))
rownames(person.height.weight) <- c("can", "cem", "hande")
person.height.weight
#add column and row
y <- matrix(c(1,2,3,4),nrow = 2)
y <- cbind(c(11,12),y)
y
y <- rbind(y, c(20,21,22))
y
#matrix operations
t(y) #transposition

y*y
y%*%y
2*y
y+y
#accessing multiple columns
y[2,]
y
y[,c(2,3)]
y[1, c(2,3)]
#[-x]to request all rows except the selected one
y
z <- y
z
z [c(1,3),1] <- c(5,6)
z
z [c(1,2),2] <- c(5)
z
z [c(1,3),c(1,3)] <- c(15,16,17,18)
z
#deleting
z <- z [,c(1,3)]#delete column #2
z
#evaluation
z <13
greater13<-z<13
z[greater13]
z[z<13]
w <- y
w
w [,2]<5
w [w[,2]<5,] #remove the row which local evaluation is false
#extras
rowMeans(w)
colMeans(w)
rowSums(w)
#apply() executes specific function
#dimcode 1=row, 2=col
w
apply(w, 2, sum)

#creation of a function
AddOne <- function(x){x+1} #x = input, {}= what to do
AddOne(3)
AddOne(-5)
AddValue <- function(x, Addend=1) {x+Addend}
AddValue(3)
AddValue(3,5)
AddValue(c(2:4),-8)
apply(w, 1, AddValue)
w
apply(w, 1, AddValue)#im lost here
apply(w, AddValue, MAR = 2)
