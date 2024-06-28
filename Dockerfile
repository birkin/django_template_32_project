## syntax=docker/dockerfile:1

## python 3.9x needed due to an error in 3.10 I didn't log
FROM python:3.9

## the tutorials include these; todo- figure out what they do
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

## who doesn't love a "stuff" directory!  :)
WORKDIR /django_auth_demo_stuff/code
RUN mkdir /django_auth_demo_stuff/logs
RUN mkdir /django_auth_demo_stuff/DBs

## set up the python environment
COPY ./config/requirements.txt /django_auth_demo_stuff/code/
RUN pip install -r ./requirements.txt
