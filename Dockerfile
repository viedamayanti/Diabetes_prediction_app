FROM ubuntu:latest


RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential


WORKDIR /app


COPY requirements.txt /app/


RUN pip3 install --no-cache-dir -r requirements.txt


COPY . /app


EXPOSE 5000


CMD ["python3", "app.py"]
