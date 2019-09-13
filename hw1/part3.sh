#!/bin/bash

echo ~read only file creation~

echo create your personal file:

read file

touch $file

chmod 644 $file

