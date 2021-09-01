#matrix can be translated.

state.x77
#check if it is a data frame
is.data.frame(state.x77)
#trransform it into a data frame
as.data.frame(state.x77)
#view the data
View(state.x77)
#save it 
dataframe.state <- as.data.frame(state.x77)
# 3 way of extracting the data
dataframe.state$Population
dataframe.state[[1]]
dataframe.state[,"Population",drop=F] #(always include the coma), when using this use the drop tyo false so it is staying as dataframe
#misspeling
dataframe.state["Income"]
dataframe.state$incomee
###it will give me the fake sensation that the subset is empty??
dataframe.state$Income
#select two columnns at the same time
dataframe.state[,2:3]
dataframe.state[,c("Income","Illiteracy")]
#income above 5000
dataframe.state[dataframe.state$Income>5000,] #dont forget to put the comas!!!
#"cuz it is not a dataframe"