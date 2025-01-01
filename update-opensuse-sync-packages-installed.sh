zypper search --installed-only | sed -n 's/^[^|]*| \([^|]*\) |.*$/\1/p' > opensuse-sync-packages-installed.txt
