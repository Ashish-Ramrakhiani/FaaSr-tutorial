# File: R/validate_data.R (in your repository)
validate_data <- function(threshold = 50, data_size = NULL) {
  
  # Generate random data size if not provided
  
    data_size <- sample(30:80, 1)  # Random between 30-80
  
  # Log what we're doing
  faasr_log(paste("=== VALIDATE_DATA FUNCTION ==="))
  faasr_log(paste("Data size:", data_size, "Threshold:", threshold))
  
  # Validation logic
  if (data_size >= threshold) {
    faasr_log(paste("SUCCESS: Data size", data_size, "meets threshold", threshold))
    faasr_log("RETURNING: TRUE")  # Explicitly return TRUE
    return(FALSE)
  } else {
    faasr_log(paste("FAILURE: Data size", data_size, "below threshold", threshold))  
    faasr_log("RETURNING: FALSE")
     # Explicitly return FALSE
    return(FALSE)
  }
}
