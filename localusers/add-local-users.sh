#!/bin/bash

# check if user is root
if [[ "${UID}" -ne 0 ]]
then
    echo 'You need to run this script as root.'
    exit 1
fi
# Ask for the user name.
read -p 'Enter the username to create: ' USER_NAME

# Ask for the real name.
read -p 'Enter the name of the person who this account is for: ' COMMENT

# Ask for the password.
read -p 'Enter the password to use for the account: ' PASSWORD

# Create the user.
useradd -c "${COMMENT}" -m ${USER_NAME}

# Check to see if the useradd command succeded.
# We don't want to tell the user that an accoount was created when it hasn't been.
if [["${?}" -ne 0 ]]
then
  echo 'The account could not be created.'
  exit 1
fi

# Set the password for the user.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
if [[ "${?}" -ne 0 ]]
then
  echo 'The password for the account could not be set'
  exit 1
fi

# Force password change on first login.
passwd -e ${USER_NAME}

# Display the details
echo
echo 'username:'
echo "${USER_NAME}"
echo
echo 'password:'
echo "${PASSWORD}"
echo
echo 'host:'
echo "${HOSTNAME}"

exit 0