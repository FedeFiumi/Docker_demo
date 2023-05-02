# Use an official Ubuntu 18.04 as a parent image
FROM ubuntu:18.04

# Update Ubuntu
RUN apt-get update -y

# Install Python3
RUN apt-get install -y python3

# Install Pip3
RUN apt-get install -y python3-pip

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

# Run app.py when the container launches
CMD ["python3", "src/app.py"]
