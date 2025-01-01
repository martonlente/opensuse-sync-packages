zypper search --installed-only | sed -n 's/^[^|]*| \([^|]*\) |.*$/\1/p' | sed '1d;s/ *$//' > opensuse-sync-packages-installed.txt
