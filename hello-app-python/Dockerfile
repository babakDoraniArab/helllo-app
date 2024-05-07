# Use a lightweight Python base image
FROM python:3.9-slim

# Install Flask
RUN pip install flask

# Set the working directory
WORKDIR /app

# Copy the app into the image
COPY app.py .

# Expose port 80
EXPOSE 80

# Define the command to run the app
CMD ["python", "app.py"]
