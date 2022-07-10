FROM python:3.8
#TODO use pyc
RUN pip install flask
EXPOSE 5001
ADD calculator.py /
CMD FLASK_APP=calculator flask run --port 5001 --host 0.0.0.0 --debugger
