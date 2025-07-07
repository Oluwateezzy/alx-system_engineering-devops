#!/bin/bash

echo "=== SED COMMANDS COLLECTION ==="


# Insert text commands
echo "--- Insert text commands ---"
sed -i '2i\\This is inserted text.' file1.txt
sed -i '' '2i\
This is inserted text.' file1.txt

# Text replacement commands
echo "--- Text replacement commands ---"
sed -'s/Linux/Unix/2' file1.txt
sed -i 's/Linux/Unix/2' file1.txt
sed 's/Linux/Unix/2' file1.txt
sed 's/Linux/Unix/2g' file1.txt
sed 's/Linux/Unix/2; s/Linux/Unix/g' file1.txt
sed ':a;s/\(.*Linux.*\)Linux/\1Unix/;ta' file1.txt

# Append text commands
echo "--- Append text commands ---"
sed -i.bak '3a\
This is appended text.' file1.txt
sed -i.bak '2a\
This is appended text.' file1.txt

# Pattern matching and substitution
echo "--- Pattern matching and substitution ---"
sed 's/^Linux/Unix/' file1.txt
sed 's/distros.$/distributions/' file1.txt
sed 's/linux/Unix/I' file1.txt

# Print specific ranges
echo "--- Print specific ranges ---"
sed -n '/inserted/,/appended/p' file1.txt

# Multiple file operations
echo "--- Multiple file operations ---"
sed -i.bak 's/Linux/Unix/' file1.txt file2.txt
sed 's/Linux/Unix/' file1.txt file2.txt

# Line numbering
echo "--- Line numbering ---"
sed '/./=' file1.txt | sed 'N;s/\n/ /'
sed '/./=' file1.txt
sed '/./=' file1.txt | sed 'N'

# Line-specific substitutions
echo "--- Line-specific substitutions ---"
sed '3 s/distros/distributions/' file1.txt
sed '2 s/distros/distributions/' file1.txt
sed '1,3 s/Linux/Unix/' file1.txt


