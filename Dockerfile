
FROM python:3.10-slim-buster


USER root


WORKDIR /src

#Copy requirements 

COPY ./analytics/requirements.txt requirements.txt

# Dependencies required for psycopg2 (used for Postgres client)
RUN apt update -y && apt install -y build-essential libpq-dev

# Intall Requirement
RUN pip install -r requirements.txt

COPY . .

CMD DB_USERNAME=postgres DB_PASSWORD=2UQVfhj7ZS python app.py
