FROM python:3.8
ADD calculator.py /
RUN pip install flask
CMD python /calculator.pyc
