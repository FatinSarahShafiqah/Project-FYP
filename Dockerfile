# syntax=docker/dockerfile:1

FROM python:3.9.2

#WORKDIR python-docker
WORKDIR /app

ADD . /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]