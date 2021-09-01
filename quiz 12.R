
circlemov <- function (x,y,r, ...)
{
  p <- seq(0, 2*pi, len=50)
  cx <- x+r*cos(p) ; cy <- y+r*sin(p)
  polygon(cx, cy, ...)
}

plot(1:100, asp=1)

circlemov( 50,79, 34, col="blue")
circlemov(4,3,5)
circlemov(30,30,30, col="red")


obj_t1 <- seq(5.7,34.2, length.out = 20)
obj_t1


x <- c(1,2,5,10,20,50)
obj_t2 <- rep(x, each=15)
obj_t2


iris[iris$Species=="versicolor",]


ability.cov
ability.cov$cov <- NULL
ability.cov








per95 <- function (x)
{quantile(x, probs = 0.95)}

per95(  rnorm(2000)  )  # should be approximately 1.64 (1.5-1.8)
unname(per95)

per95 <- unname(per95())


med_avg <- function(vec, na.rm=TRUE)
{ 
  c("Mean"=mean(vec), "Median"= median(vec))}
med_avg(c(10,2,3,44,50000,60000000))




