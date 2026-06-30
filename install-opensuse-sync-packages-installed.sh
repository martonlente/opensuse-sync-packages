#!/bin/sh

# Read package list from file
cat opensuse-sync-packages-installed.txt | \

# Format into a single line and install packages using zypper
xargs zypper install
