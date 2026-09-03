#!/bin/sh

is_flatpak=false

# Check if arg is_flatpak is passed
while [ "$#" -gt 0 ]; do
  case "$1" in
    --is-flatpak)
      is_flatpak=true
      shift
      ;;
    *)
      # Read arg as src
      break
      ;;
  esac
done

# Check if src arg is passed
if [ -z "$1" ]; then
  echo "Usage: $0 [--is-flatpak] src=<packages.txt>"
  exit 1
fi

# Extract src from arg
src=$(echo "$1" | cut -d'=' -f2-)

# Check if file exists
if [ ! -f "$src" ]; then
  echo "Error: File '$src' does not exist."
  exit 1
fi

# Read packages from src
packages=$(cat "$src")

if [ "$is_flatpak" = true ]; then
  # Format into a single line and install packages using flatpak
  echo "$packages" | xargs -I {} flatpak install flathub {} # Flag -I is needed to run install once per package
else
  # Install packages using zypper
  echo "$packages" | xargs zypper install
fi
