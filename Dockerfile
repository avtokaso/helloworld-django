FROM python:3.9-slim-buster
RUN apt-get -y update && apt-get install -y python3-dev python3-pip gcc
WORKDIR /app
RUN pip install --upgrade pip
COPY requirements.txt /app/requirements.txt
RUN pip3 install -r /app/requirements.txt
