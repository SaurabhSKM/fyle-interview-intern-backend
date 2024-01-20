# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /fyle-interview-intern-backend

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

SHELL ["/bin/bash", "-c"]

#RUN /bin/bash -c '/fyle-interview-intern-backend/run.sh'
CMD [ "bash", "run.sh"]