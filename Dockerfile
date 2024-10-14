# Base Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the Python dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code and models
COPY . .

# Expose the port
EXPOSE 5000

# Run the chatbot (Flask or FastAPI)
CMD ["python", "src/chatbot.py"]
