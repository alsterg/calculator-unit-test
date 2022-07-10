FROM python:3.8
#TODO use pyc
RUN pip install flask

RUN apt install -y iputils-ping
RUN apt install -y vim
RUN apt install -y iproute2

EXPOSE 5001
ADD calculator.py /
CMD FLASK_APP=calculator flask run --port 5001 --host 0.0.0.0 --debugger
