# Step 1: Use a lightweight Python base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory's contents into the container
COPY . /app/

# Step 4: Install required Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the Flask app's port (default Flask port is 5000)
EXPOSE 5000

# Step 6: Run the Flask application
CMD ["python", "app.py"]
