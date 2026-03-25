#!/bin/bash

dir=$1

if [ -d "$dir" ] && [ "$(ls -A "$dir")" ]; then 
        filename=$(ls -t "$dir"/*.txt | head -n 1)
        
        echo "filename existe"
        awk '{print $NF, $0}' $filename | sort -gr | head -10 | cut -d ' ' -f2- 

else
        echo "filename no existe"
fi
