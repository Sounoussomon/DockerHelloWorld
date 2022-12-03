FROM python:3.8

# set work directory
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y binutils libproj-dev gdal-bin python3-gdal

COPY . .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt


EXPOSE 5000
CMD ["python3", "/app/main.py"]
