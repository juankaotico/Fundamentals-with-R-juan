vect <- c(1,2,3,4,5,6,7)
vect
vect[-(2:3)]
vect <- vect[-(2:3)]
vect
PassedAway <- c(T,T,F,T,F,F,F,T,F)
mean(passedAway)
c(6, 8) + 1:5
seq(80, 10, by=-8)
seq(80, 10, by=8)
vect <- c(4, 9, 2, 7, 6)
order(vect)
which((1:8) => 4)
m1 <- matrix(1:6, ncol=2)
m2 <- matrix(1:9, ncol=3)
rbind(m1, m2)
m3 <- cbind(m1, m2)
m3[c(1:2, 3)]
m3
m <- matrix(1:8, ncol=2, colnames=c("A","B"))
m <- matrix(1:8,ncol=2)
colnames(m) <- c("A","B")
m
w <- data.frame(A=45:49, B=65:69)
w
cbind(m,w)
rbind(m,w)
my_list <- list(a="hi", b=letters, c=rnorm(10), d=pi)
my_list$d <- NULL
my_list[4]


sapply(kiggs, is.data.frame)       
m        
m1
m2
m3
range(m3[,1:4])        
apply(m3, MARGIN = 2, FUN= range)        
m3        
