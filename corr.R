#relies on complete.R
corr <- function(directory, threshold=0){
  df = complete(directory)
  ids=df[df["nobs"] > threshold, ]$id
  corrMatrix = numeric()
  for(i in ids){
    newRead = read.csv(paste(directory, "/", formatC(i,width=3,flag="0"),".csv", sep=""))
    dff = newRead[complete.cases(newRead), ]
    corrMatrix = c(corrMatrix,cor(dff$sulfate, dff$nitrate))
  }
  return(corrMatrix)
}
