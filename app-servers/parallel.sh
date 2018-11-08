#!/bin/bash
for i in `seq 1 700`;
do
  curl localhost:8080 &
done
