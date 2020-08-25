pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  for (i in id) {
    if (id[i] < 10) {
      id <- paste("00", id[i], sep = "")
    } else if (id[i] >= 10 & id[i] < 100) {
      id <- paste("0", id[i], sep = "")
    }
  }
  
  
  library(readr)
  
  if (length(id) > 1) {
    for (i in id) {
      file_name <- paste(directory, "/", id, ".csv", sep = "")
      data <- read_csv(file_name)
    }
  } else {
    file_name <- paste(directory, "/", id, ".csv", sep = "")
    data <- read_csv(file_name)
  }
  
}