FROM python:3.8
#TODO use pyc
ADD calculator.py /
RUN pip install flask
CMD FLASK_APP=calculator  flask run --port 5001
