handle_error <- function(error_message = "Error handling initiated") {
  # Log the error handling
  faasr_log(paste("ERROR HANDLER:", error_message))
  
  # Simulate error handling work
  Sys.sleep(1)  # Simulate processing time
  
  # Create an error report
  error_data <- data.frame(
    timestamp = Sys.time(),
    status = "ERROR",
    message = error_message,
    retry_count = sample(1:3, 1),
    next_action = "manual_review"
  )
  
  # Save the error report
  write.csv(error_data, "error_report.csv", row.names = FALSE)
  faasr_put_file(local_file = "error_report.csv", remote_file = "error_report.csv")
  
  faasr_log("Error handling completed and report uploaded")
  return(TRUE)
}