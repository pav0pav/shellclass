#!/bin/bash

# This script shows the open network on a system.
# Use -4 as an argument to limit to tcpv4 ports.

netstat -4tuln | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'