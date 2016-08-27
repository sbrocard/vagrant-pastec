#!/bin/bash

vagrant up

echo starting pastec
nohup vagrant ssh -c "pastec /pastec/visualWordsORB.dat" &

echo waiting 30s
sleep 30

echo starting test
cd tests

./run-test.sh

if [ $? -eq 0 ]
then
  echo "Test Successfully"
  exit 0
else
  echo "Test failed" >&2
  exit 1
fi
