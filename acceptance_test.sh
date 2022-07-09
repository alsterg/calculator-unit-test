#!/bin/bash
# TODO: IP was discovered manually by running: minikube ip
test $(curl 192.168.49.2:5001/calculate?operator=add\&num1=2\&num2=3) -eq 5
