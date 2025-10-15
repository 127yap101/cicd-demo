# Use official Python image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install pytest

# Default command
CMD ["python", "app.py"]
