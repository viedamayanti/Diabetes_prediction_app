# FROM ubuntu:latest

# # Install python and pip
# RUN apt-get update -y
# RUN apt-get install -y python3 python3-pip python3-dev build-essential

# COPY requirements.txt /Users/viedamayanti/Desktop/Week5
# RUN pip3 install --no-cache-dir -r /Users/viedamayanti/Desktop/Week5/requirements.txt


# # WORKDIR /Users/viedamayanti/Desktop/Week4

# COPY app.py /Users/viedamayanti/Desktop/Week5/app.py

# EXPOSE 5000

# CMD ["python3", "/Users/viedamayanti/Desktop/Week5/app.py"]

FROM ubuntu:latest

# Install python and pip
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the command to run your application
CMD ["python3", "app.py"]
