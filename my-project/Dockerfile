FROM ubuntu:24.04.2

# Set the working directory
WORKDIR /app

# Copy the necessary files
COPY ./src /app/src
COPY ./scripts /app/scripts
COPY ./Makefile /app/Makefile
COPY ./README.md /app/README.md

# Install dependencies (if any)
RUN apt-get update && apt-get install -y \
    # Add any required packages here, for example:
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Build the application
RUN chmod +x ./scripts/build.sh && ./scripts/build.sh

# Command to run the application
CMD ["./scripts/start.sh"]  # Adjust this if you have a specific start script or command
