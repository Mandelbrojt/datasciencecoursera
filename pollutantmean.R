pollutantmean <- function(directory, pollutant, id = 1:332) {

file_numbers <- vector("character", length(id))  
  for (i in id) {
    if (id[i] < 10) {
      number <- paste("00", id[i], sep = "")
      file_numbers[i] <- number
    } else if (id[i] >= 10 & id[i] < 100) {
      number <- paste("0", id[i], sep = "")
      file_numbers[i] <- number
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