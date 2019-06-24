FROM python:3.7

ENV PYTHONUNBUFFERED 1

COPY ./src /opt/app

RUN python -m pip install --upgrade pip
RUN pip install -r /opt/app/requirements.txt

EXPOSE 8000
