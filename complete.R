complete <- function(directory, id=1:332){
  f <- function(i){
    data = read.csv(paste(directory, "/", sprintf("%03d", as.numeric(i)), ".csv", sep = ""))
    sum(complete.cases(data))
  }
  nobs = sapply(id,f)
  return(data.frame(id, nobs))
}
