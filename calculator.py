from flask import Flask
from flask import request

app = Flask(__name__)

class Calculator():
    """Performs the four basic mathematical operations

    Methods:
     add(number, number)
     subtract(number, number)
     multiply(number, number)
     divide(number,number)
    """

    def add(self, firstOperand, secondOperand):
        """Adds two numbers together

        Arguments:
          firstOperand - Any number
          secondOperand - Any number
        """
        return firstOperand + secondOperand

    def subtract(self, firstOperand, secondOperand): 
        """Subtracts two numbers together

        Arguments:
          firstOperand - Any number
          secondOperand - Any number
        """
        return firstOperand - secondOperand

    def multiply(self, firstOperand, secondOperand):
        """Multiplies two numbers together

        Arguments:
          firstOperand - Any number
          secondOperand - Any number
        """
        return firstOperand * secondOperand

    def divide(self, firstOperand, secondOperand):   
        """Divides two numbers together

        Arguments:
          firstOperand - Any number
          secondOperand - Any number
        """
        return firstOperand / secondOperand

c = Calculator()

@app.route('/calculate')
def calculate():
    operator = request.args.get('operator')
    num1 = int(request.args.get('num1'))
    num2 = int(request.args.get('num2'))

    if operator == 'add':
        return str(c.add(num1, num2))
    if operator == 'subtract':
        return str(c.subtract(num1, num2))
    if operator == 'multiply':
        return str(c.multiply(num1, num2))
    if operator == 'divide':
        return str(c.divide(num1, num2))

