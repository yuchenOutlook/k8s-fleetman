#!/bin/bash

# Get a list of all processes related to "docker"
docker_processes=$(ps aux | grep -i "docker" | grep -v "grep" | awk '{print $2}')

# Loop through the list of processes and kill each one
for pid in $docker_processes
do
    echo "Killing process with PID: $pid"
    kill -9 $pid
done

echo "All Docker-related processes have been killed."

