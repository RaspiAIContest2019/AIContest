#!/bin/sh

file_path="./question/*"

mv $file_path ./data/test/

echo "========TIME(Preprocessing)========"

time /anaconda3/envs/MachineLearning/bin/python3 preprocessing.py

echo "==================================="

time /anaconda3/envs/MachineLearning/bin/python3 predict.py

echo "==================================="

file_path2="./data/test/*"

mv $file_path2 ./Fin/
