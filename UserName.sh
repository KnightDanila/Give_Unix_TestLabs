#!/bin/bash

name=$(zenity --forms --title="Create a user" --text="Enter your data" \
--add-entry="First Name" \
--add-entry="Last Name")

if [ $? = 0 ]; then

echo "User full name: $name."

zenity --info --title="User full name" --text="$name"

else

echo "User hasn't enetered a name and pressed cancel."

fi