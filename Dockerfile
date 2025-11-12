# Use Python 3.11 slim image as base
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy the Python application to container
COPY src/app.py .

# Set the default command to run the application
CMD ["python", "app.py"]
