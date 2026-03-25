#!/bin/bash

dir=$1

if [ -d "$dir" ] && [ "$(ls -A "$dir")" ]; then 
    filename=$(ls -t "$dir"/*.txt | head -n 1)
	
	sort $filename -nr
else 
	echo "filename no existe"
fi
