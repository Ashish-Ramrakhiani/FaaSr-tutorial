validate_data <- function(threshold = 50, data_size = NULL) {
  # Simulate reading some data
  if (is.null(data_size)) {
    data_size <- sample(1:100, 1)  # Random data size between 1-100
  }
  
  # Log what we're doing
  faasr_log(paste("Validating data with size:", data_size, "against threshold:", threshold))
  
  # Validation logic: data is valid if size >= threshold
  if (data_size >= threshold) {
    faasr_log(paste("SUCCESS: Data size", data_size, "meets threshold", threshold))
    return(TRUE)  # Will trigger actions with [TRUE] condition
  } else {
    faasr_log(paste("FAILURE: Data size", data_size, "below threshold", threshold))
    return(FALSE) # Will trigger actions with [FALSE] condition
  }
}