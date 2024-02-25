FROM python:3.10-slim-buster


USER root


WORKDIR /src

#Copy requirements 

COPY ./requirements.txt requirements.txt

# Dependencies required for psycopg2 (used for Postgres client)
RUN apt update -y && apt install -y build-essential libpq-dev

# Intall Requirement
RUN pip install -r requirements.txt

COPY . .

<<<<<<< HEAD
CMD DB_USERNAME=postgres DB_PASSWORD=VxT7flqYtw python app.pyS
=======
CMD DB_USERNAME=postgres DB_PASSWORD=VxT7flqYtw python app.pyS
>>>>>>> 66ee48a53f70415680822b787e7c2ad709c5d641
