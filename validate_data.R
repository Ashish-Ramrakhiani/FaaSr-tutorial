# validate_data.R
# Simple validation function that always returns TRUE for testing

validate_data <- function(threshold, data_size) {
  # Log function start
  faasr_log("Starting validate_data function...")
  
  # Log the parameters received
  faasr_log(paste("Threshold parameter:", threshold))
  faasr_log(paste("Data size parameter:", data_size))
  
  # Simple validation logic (you can change this return value for testing)
  result <- "abc"  # Change this to FALSE to test the error path 
  
  # Return boolean result for conditional triggering
  return(result)
}
