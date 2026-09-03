#!/bin/sh

# Check if src arg is passed
if [ -z "$1" ]; then
  echo "Usage: $0 src=<packages.txt>"
  exit 1
fi

# Extract src from arg
src=$(echo "$1" | cut -d'=' -f2-)

# Check if file exists
if [ ! -f "$src" ]; then
  echo "Error: File '$src' does not exist."
  exit 1
fi

# Read package list from file
cat "$src" | \

# Format into a single line and install packages using zypper
xargs zypper install
