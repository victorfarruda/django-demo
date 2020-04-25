FROM python:3.8
LABEL maintainer 'Victor'
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY Pipfile /app/
COPY Pipfile.lock /app/

RUN pip install pipenv
RUN pipenv sync

COPY . /app/
