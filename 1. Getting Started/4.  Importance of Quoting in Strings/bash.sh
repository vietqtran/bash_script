#!/usr/bin/env bash

world="World"

# Weak quoting
echo "Hello, $world"
#> Hello, World

echo "Hello, \$world"
#> Hello, $world

# Strong quoting
echo 'Hello, $world'
#> Hello, $world