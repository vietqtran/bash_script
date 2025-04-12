#!/usr/bin/env bash

echo "finding lines that contain the word 'asdf' in logs.txt"
grep asdf logs.txt

echo "finding lines that do not contain the word 'asdf' in logs.txt"
grep -v asdf logs.txt

echo "finding lines that contain the word 'ff' in logs.txt"
grep "*ff" logs.txt