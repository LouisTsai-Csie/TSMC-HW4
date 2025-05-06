# Use the official Python 3 image from Docker Hub
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY home.py .

# Set the default command to run your script
CMD ["python", "home.py"]
