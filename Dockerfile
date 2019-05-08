FROM python:3.7


ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

COPY src/requirements.txt /opt/app/requirements.txt
RUN pip install -r /opt/app/requirements.txt

COPY . /code/

EXPOSE 8000
