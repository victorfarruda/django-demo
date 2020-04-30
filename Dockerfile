FROM python:3.8
LABEL maintainer 'Victor'
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
RUN mkdir .venv

COPY Pipfile /app/
COPY Pipfile.lock /app/

RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

COPY . /app/

WORKDIR /app/app