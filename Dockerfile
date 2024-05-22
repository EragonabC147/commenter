# Use an official image as a parent image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the script into the container
COPY entrypoint.sh .

# Ensure the script is executable
RUN chmod +x entrypoint.sh

# Run the script
ENTRYPOINT ["./entrypoint.sh"]
