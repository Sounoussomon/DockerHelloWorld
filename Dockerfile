# use this image
FROM python:3.8 


# set work directory
WORKDIR /app
#define the environment variable in docker container
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# installing and update python dependencies or libraries
RUN apt-get update && apt-get install -y binutils libproj-dev gdal-bin python3-gdal

# Upgrading pip (kind of nuggage package it is python package manager)
RUN pip install --upgrade pip

# copy all my files from my local directory to my dockage image
COPY . .

# i want my application to work on port 80
EXPOSE 80

#run my python project.

CMD python3 helloworld.py