#!/bin/bash
# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
    echo 'You need to run this script as root.' >&2
    exit 1
fi

for U in carrief markh harrisonf alecg peterm
do
    useradd ${U}
    echo 'pass123' | passwd --stdin ${U}
done