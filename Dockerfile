FROM python:3.8-alpine
MAINTAINER Personal

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /smile
WORKDIR /smile
COPY ./smile /smile

RUN adduser -D user
USER user
