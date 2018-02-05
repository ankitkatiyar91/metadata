########################### fucntion definitions ######################################################
# function to calculate mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
# function to generate meta deta
generateMeta <- function(input) {
  if (is.data.frame(input)) {
    input <- as.data.frame(input)
    col_names <- colnames(input)
    nas <- numeric(length = length(col_names))
    blanks <- numeric(length = length(col_names))
    uniques <- numeric(length = length(col_names))
    means <- numeric(length = length(col_names))
    medians <- numeric(length = length(col_names))
    modes <- numeric(length = length(col_names))
    min_ <- numeric(length = length(col_names))
    max_ <- numeric(length = length(col_names))
    range_ <- numeric(length = length(col_names))
    
    for (i in 1:length(col_names)) {
      
      nas[i] <- sum(is.na(input[col_names[i]]))
      uniques[i] <- length(unique(input[,col_names[i]]))
      
      if (is.character(input[col_names[i]])) {
        blanks[i] <- sum(str_trim(input[col_names[i]]) == "")
      }else if (is.numeric(input[,col_names[i]]))
      {
        means[i] <- round(mean(input[,col_names[i]],na.rm = TRUE),2)
        medians[i] <- round(median(input[,col_names[i]],na.rm = TRUE),2)
        modes[i] <- round(getmode(input[,col_names[i]]),2)
        min_[i] <- round(min(input[,col_names[i]],na.rm = TRUE),2)
        max_[i] <- round(max(input[,col_names[i]],na.rm = TRUE),2)
        range_[i] <- max_[i] - min_[i]
      } 
    }
    
    return(data.frame(
      "name" = col_names,
      "na_Count" = nas,
      "blanks" = blanks,
      "unique" = uniques,
      "min" = min_,
      "max" = max_,
      "range" = range_,
      "medians" =  medians,
      "mean" = means,
      "mode" = modes
    ))
  }
  # returns count of NA and blank values
  return(c(
    "na_count" = sum(is.na(input)),
    "blanks" = sum(str_trim(input) == ""),
    "unique" = sum(unique(input))
  ))
}
########################### fucntion END ########################### 