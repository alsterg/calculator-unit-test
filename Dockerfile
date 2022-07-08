FROM python:3.8
#TODO use pyc
ADD calculator.py /
RUN pip install flask
CMD python /calculator.py
