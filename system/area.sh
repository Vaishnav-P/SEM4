#!/bin/bash

echo "Area of a right angled triangle";
echo "Enter height and base of the right angled triangle";

read height;
read base;
echo "Area:";
echo "0.5 * $base * $height" | bc;

