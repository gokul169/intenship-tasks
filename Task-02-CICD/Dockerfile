# Use official Python image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install dependencies if requirements.txt exists
RUN pip install --no-cache-dir -r requirements.txt || true

# Run the app
CMD ["python", "app.py"]
