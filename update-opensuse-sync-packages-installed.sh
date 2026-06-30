zypper search --installed-only | \
# Print table content (skip first 5 lines)
tail -n +6 | \
# Extract column 2 (package names)
cut -d'|' -f2 | \
# Remove trailing whitespace (process each line as single argument)
xargs -n1 > opensuse-sync-packages-installed.txt
