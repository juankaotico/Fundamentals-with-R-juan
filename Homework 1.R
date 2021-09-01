friends.height <- c(f1= 1.80, f2= 1.60, f3= 1.75, f4= 1.67, f5= 1.73)
friends.weight <- c(f1= 88, f2= 85, f3= 60, f4= 58, f5=100)
friends.height
friends.weight
friends.height <- c(friends.height, f6= 1.73, f7= 1.65, f8= 1.95, f9=1.45, f10=1.79)
friends.weight <- c(friends.weight, f6= 70, f7= 60, f8= 110, f9= 45, f10= 93)
friends.height
friends.weight
friends.slim <- friends.weight <=65
friends.slim
friends.weightnoslim <- friends.weight[friends.weight > 65]
friends.weightnoslim
friends.heightnoslim <- friends.height[friends.weight > 65]
friends.heightnoslim
friends.height[order(friends.weight)]
friends.heightnoslim[order(friends.weightnoslim)]
signif(friends.weight/friends.height**2, digits = 3)
friends.larger <- friends.weight > 70
friends.larger
friends.datalarg <- friends.weight[friends.larger]
friends.datalarg
friends.datalargslim <- friends.datalarg - friends.datalarg*0.05
friends.datalargslim
friends.weight[friends.weight>70] - friends.weight[friends.weight>70]*0.05


---------------------------------------------------------------------------
  
seq(1:10)
seq(1:10)
seq(1,10)
seq(1,10,2)
seq(10:1)
seq(10,1)
seq(to=1, from= 10)
seq(from=1.65, to= 1.90, len= 6)
seq(from=1.65, to= 1.90, by= 0.05)
rep(1:4, each=2, len= 24)
rep(1:4, each=2, times = 3)
rep(1:4, times= 3, each=2)

rep(1:4)
