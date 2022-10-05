# syntax=docker/dockerfile:1


FROM python:3.10.7-slim-buster

#Runs python in a virtual environment, which allows python modules to be separate in case you want to use 2 different versions \
#of a module.  https://docs.python.org/3/tutorial/venv.html
RUN python3 -m venv /ansible

#Switch to the virtual environment instance of Python to continue with ansible Installation
ENV PATH="/ansible/bin:$PATH"

WORKDIR /app

COPY . .

RUN pip3 install ansible