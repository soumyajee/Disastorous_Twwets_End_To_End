# Use a lightweight Python base image
FROM python:3.10-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the container
COPY . .

# Install required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python script
CMD ["python3", "APP_TWEETS.py"]
