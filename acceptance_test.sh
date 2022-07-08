#!/bin/bash
test $(curl localhost:5002/calculate?operator=add\&num1=2\&num2=3) -eq 5
