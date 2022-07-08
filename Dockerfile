FROM python:3.8
ADD __pycache__/calculator.cpython-36.pyc .
RUN pip install flask
CMD python ./calculator.pyc
