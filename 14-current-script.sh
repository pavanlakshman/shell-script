#!/bin/bash

COURSE="DevOps from current script"

echo "Before calling other script, course: $COURSE"
echo "Process Instace ID of the current shell script: $$"

./15-other-script.sh
echo "After calling other script, course: $COURSE"
