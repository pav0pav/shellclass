#!/bin/bash


# Display th UID and username of the user executing script.
# Display if the user is the root user or not.

# Pseudocode - write in plain English what is your script going to achieve and name all the stages
# example: 
# Display the UID
# Display the username
# Display of the user is the root or not
#
#
#
#
# Display the UID
echo "Your UID is ${UID}"



# Display the UID
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

# Display if the user is the root or not


if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
else
  echo 'You are not root.'
fi


