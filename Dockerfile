# # Use the official Python image from the Docker Hub
# FROM python:3.9-slim

# # Set the working directory
# WORKDIR /app

# # Copy requirements and install dependencies
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy the rest of the application code
# COPY . .

# # Expose the port the app runs on
# EXPOSE 8501

# # Define the command to run the app
# CMD ["streamlit", "run", "app.py"]

# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the Streamlit port
EXPOSE 8501

# Command to run the Streamlit application
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]


