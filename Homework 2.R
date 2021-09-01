friends.weight
friends.height
matrix.friends.height <- as.matrix(friends.height)
matrix.friends.height
matrix.friends.weight <- as.matrix(friends.weight)
matrix.friends.weight
matrix.friends <- cbind(matrix.friends.height,matrix.friends.weight)
matrix.friends
colnames(matrix.friends) <- c("height", "weight")
matrix.friends
matrix.friends <- cbind(matrix.friends, c (matrix.friends.weight/matrix.friends.height**2))
matrix.friends
matrix.friends <- cbind(matrix.friends, -c (matrix.friends.weight/matrix.friends.height**2))
matrix.friends
matrix.friends <- matrix.friends [, c(1,2,3)]
matrix.friends
colnames(matrix.friends) <- c("height", "weight", "BMI")
matrix.friends
matrix.friends[matrix.friends[1:5,2]+matrix.friends[1:5,2]*10]
matrix.friends
Increase10por <- function(x) {x+(x*0.1)} 
friends.weight
friends.weight[1:5] <- friends.weight [1:5]+(friends.weight[1:5]*0.1)
friends.weight
friends.weight[6:10] <- friends.weight [6:10]-(friends.weight[6:10]*0.05)
friends.weight
matrix.friends
matrix.friends[matrix.friends[,1]>1.7,]
matrix.friends
mean(matrix.friends[matrix.friends[,1]>1.7,][,3])
IncreaseXpor <- function(x,Addend) {x+(x*(Addend/100))}
DecreaseXpor <- function(x,Addend) {x-(x*(Addend/100))}
apply(matrix.friends$weight,2, DecreaseXpor, 5)
##need some help with this one