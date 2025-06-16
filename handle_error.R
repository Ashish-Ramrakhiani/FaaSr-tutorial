# handle_error.R
# Simple function that runs when validation returns FALSE

handle_error <- function() {
  # Log function start
  faasr_log("⚠️ ERROR PATH: handle_error function started")
  
  # Create a simple error file
  error_message <- "Data validation failed - error handling initiated"
  writeLines(error_message, "error_output.txt")
  
  # Upload the error file to S3
  faasr_put_file(
    local_folder = ".",
    local_file = "error_output.txt", 
    remote_folder = "outputs",
    remote_file = "error_result.txt"
  )
  
  faasr_log("❌ ERROR: Created and uploaded error file")
  faasr_log("Error handling completed!")
  
  return("ERROR_HANDLED")
}
