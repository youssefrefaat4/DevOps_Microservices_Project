#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -f Dockerfile -t=ikdunby/app .
#Aman_ if there are 2 args in build command, it needs to be followed by .  check why ?

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 ikdunby/app