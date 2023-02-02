#!/bin/bash

#script_run.sh
#a simple script to add execute a new script and run it. 
#January 31, 2023

script=$1

chmod +x $script

./$script
