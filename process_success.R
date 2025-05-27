process_success <- function(message = "Success processing completed") {
  # Log the success
  faasr_log(paste("SUCCESS HANDLER:", message))
  
  # Simulate some successful processing work
  Sys.sleep(2)  # Simulate processing time
  
  # Create a success output file
  success_data <- data.frame(
    timestamp = Sys.time(),
    status = "SUCCESS",
    message = message,
    processed_items = sample(100:500, 1)
  )
  
  # Save the result
  write.csv(success_data, "success_output.csv", row.names = FALSE)
  faasr_put_file(local_file = "success_output.csv", remote_file = "success_output.csv")
  
  faasr_log("Success processing completed and file uploaded")
  return(TRUE)
}