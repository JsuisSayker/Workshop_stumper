#!/bin/bash

if [ -f "$1" ]; then
  valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all --errors-for-leak-kinds=all $1
else
  make re
  valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all --errors-for-leak-kinds=all $1
fi
