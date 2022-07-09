#!/bin/bash
test $(curl 172.18.0.1:5002/calculate?operator=add\&num1=2\&num2=3) -eq 5
