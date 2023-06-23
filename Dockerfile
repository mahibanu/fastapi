# Base image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code
COPY ./app .

# Expose the port
EXPOSE 80

# Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
