#!/bin/bash
# TODO: IP was discovered manually by running: minikube ip
sleep 10  # wait for pod to start
test $(curl 192.168.49.2:32301/calculate?operator=add\&num1=2\&num2=3) -eq 5
