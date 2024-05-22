# Use an official image as a parent image
FROM ubuntu:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the script into the container
COPY script.sh .

# Ensure the script is executable
RUN chmod +x script.sh

# Run the script
ENTRYPOINT ["./script.sh"]
