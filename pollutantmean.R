pollutantmean <- function(directory, pollutant, id = 1:332){
  fileList = list.files(directory)
  selected = fileList[match(id,as.numeric(sub(".csv$","",fileList)))]
  Data = lapply(file.path(directory,selected),read.csv)
  Data = do.call(rbind.data.frame, Data)
  mean(Data[,pollutant],na.rm=TRUE)
}
