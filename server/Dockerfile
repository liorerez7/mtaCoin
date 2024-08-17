# Use an official Ubuntu base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential

# Create directory for the project
WORKDIR /usr/src/server

# Copy the current directory contents into the container
COPY /ServerExeFolder .

# Create mnt/mta directory
RUN mkdir -p /usr/src/mnt/mta

# Run the server executable
CMD ["./newServer"]
