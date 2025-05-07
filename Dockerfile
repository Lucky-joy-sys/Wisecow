# Use a base image with a minimal OS
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages (cowsay, fortune, etc.)
RUN apt-get update && \
    apt-get install -y cowsay fortune && \
    apt-get clean

# Copy the script into the container's filesystem
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Give execution permission to the script
RUN chmod +x /usr/local/bin/wisecow.sh

# Set the script as the default command to run when the container starts
CMD ["/usr/local/bin/wisecow.sh"]