pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## Specify the folder name
  mydir = "specdata"
  
  ## Create a list for all of the CSV file names stored in the folder
  myfiles = list.files(path = mydir, pattern = "*.csv", full.names = TRUE)
  
  library(readr)
  ## Read all CSV files in the specified folder and store them in a list
  ## This new list contains data frames
  df_list <- sapply(myfiles, read_csv, simplify = FALSE)
  
  ## Merge all data frames in the list into one data frame
  df <- bind_rows(df_list)
}