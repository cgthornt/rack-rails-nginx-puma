#!/bin/bash


# Starts at 10 threads, scales to 200
# 10 workers, forked from a parent process
puma -p 8080 \
  --threads 10:200 \
  --workers 10 \
  puma.ru
