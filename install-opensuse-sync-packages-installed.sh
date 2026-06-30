#!/bin/sh

# Read package list from file
cat opensuse-sync-packages-installed.txt |

# Format into a single line (separated by spaces)
xargs |

# Install packages using zypper
zypper install
