#!/bin/bash

# Collection of awk commands from command history
# Generated on 2025-07-07

echo "=== AWK COMMANDS COLLECTION ==="

# Basic field printing
echo "--- Basic field printing ---"
ps -ef | awk '{print $3, $5 $7}'
ps -ef | awk '{print $1, $2 $8}'
ps -ef | awk '{print $1,"....\" $2 \"....\" $8}'
ps -ef | awk '{print $1}'

# Field separators
echo "--- Field separators ---"
ps -ef | awk -F: '{print $1}'
ps -ef | awk -v FS=: '{print $1}'
ps -ef | awk -F/ '{print $1}'
ps -ef | awk -F/ '{print $3, $5}'

# Variables
echo "--- Variables ---"
awk -v var1=xyz 'BEGIN{printf "var1 = %s\n", var1}'
awk -v var1=4 'BEGIN{printf "var1 = %s\n", var1+var1}'

# Pattern matching
echo "--- Pattern matching ---"
ps -ef | awk ' /tty/ {print}'
ps -ef | awk ' /tty/ {print $5}'
ps -ef | awk ' /tty/ {print $3}'
ps -ef | awk '/tty/ {print $3, $4, $5}'
ps -ef | awk '/tty/ {for(i=3; i<=5; i++) printf "%s ", $i; print ""}'

# Counting and statistics
echo "--- Counting and statistics ---"
ps -ef | awk '/test/{++c} END {print "Total Matched: ", c}'
ps -ef | awk '/test/{++c} {print} END {print "Total Matched: ", c}'
ps -ef | awk '/usr/{++c} {print} END {print "Total Matched: ", c}'
ps -ef | awk '/usr/{++c} END {print "Total Matched: ", c}'

# String functions
echo "--- String functions ---"
ps -ef | awk 'length($0)'
ps -ef | awk 'length($0) > 100'
ps -ef | awk 'length($0) < 100'
ps -ef | awk '{sub(/usr/, "rook"); print}'

# Using external awk scripts
echo "--- Using external awk scripts ---"
ps -ef | awk -f test.awk

# Conditional statements
echo "--- Conditional statements ---"
awk 'BEGIN {x = 5; if (x * 2 == 10) printf "%d matched.\n", x }'
awk 'BEGIN {x = "xyz"; if (x == "xyz") printf "%s matched.\n", x }'

# Arrays
echo "--- Arrays ---"
awk 'BEGIN {array1["123"] = 10; print array1["123"];}'
awk 'BEGIN {array1["123"] = 10; print array1[123];}'
awk 'BEGIN {array1[123] = 10;   print array1[123];}'
awk 'BEGIN {array1[1,2] = 10; print array1[1,2];}'

# Loops
echo "--- Loops ---"
awk 'BEGIN {for (c =0; c <= 10; c++) print c}'
awk 'BEGIN {c = 0; while(c <= 10) {print c; c++}}'
awk 'BEGIN {c = 0; do {print c; c++} while(c <= 10)}'

# Exit codes
echo "--- Exit codes ---"
awk 'BEGIN { print "Success"; exit(0) }'; echo "Exit code: $?"
awk 'BEGIN { print "Error condition"; exit(99) }'; echo "Exit code: $?"

# Advanced pattern matching
echo "--- Advanced pattern matching ---"
ps -ef | awk '/root/'
ps -ef | awk '!/root/'
ps -ef | awk '/^root/'
ps -ef | awk '/chrome$/'
ps -ef | awk '/user[12]/'
ps -ef | awk '/user[0-9]/'
ps -ef | awk '/use[a-z][0-9]/'
ps -ef | awk '/user[^12]/'
ps -ef | awk '/user1|root/'
ps -ef | awk '/userx?/'
ps -ef | awk '/userx*/'
ps -ef | awk '/userx+/'
ps -ef | awk '/user.*Dec/'
ps -ef | awk '/Dec(26|27)/'

# Built-in variables
echo "--- Built-in variables ---"
awk 'BEGIN {print "Total args: ", ARGC}' a b c d
awk 'BEGIN {print "Command name: ", ARGV[0]}' a b c d
awk 'BEGIN {print "First arg: ", ARGV[1]}' a b c d
awk 'BEGIN {print "Second arg: ", ARGV[2]}' a b c d
awk 'BEGIN { for (c = 0; c < ARGC - 1; ++c) { print ARGV[c] } }' a b c d
awk 'BEGIN { print "Conversion Format: ", CONVFMT }'
awk 'BEGIN { print ENVIRON["USER"] }'
awk 'END {print FILENAME}' test1.txt
ps -ef | awk 'END {print FILENAME}'
awk 'BEGIN {print "FS = " FS}' 
awk -v FS=: 'BEGIN {print FS}'
ps -ef | awk 'NF > 5'
ps -ef | awk '{print NF}'
ps -ef | awk '{print NR}'
awk 'BEGIN{IGNORECASE = 1} /amit/' marks.txt

# Variable operations
echo "--- Variable operations ---"
awk 'BEGIN { x = "abc"; print x }'
awk 'BEGIN { a = 25; b = ++a; print  a, b }'
awk 'BEGIN { a = 25; b = --a; print a, b }'
awk 'BEGIN { a = 25; b = a++; print a, b }'
awk 'BEGIN { a = 25; b = a--; print a, b }'

# String and logical operations
echo "--- String and logical operations ---"
awk 'BEGIN { a = "abc"; if (a !=  "xyz") print "got it" }'
awk 'BEGIN { b = ""; if (! length(b)) print "empty" }'
awk 'BEGIN { a = 25; b = 35; (a > b) ? c = "larger" : c = "smaller"; print c}'
awk 'BEGIN { a = "Hello "; b = "World"; c = a b; print c }'

# Pattern matching operators
echo "--- Pattern matching operators ---"
ps -ef | awk '$0 ~ 1'
ps -ef | awk '$0 !~ 1'

# Output redirection
echo "--- Output redirection ---"
awk 'BEGIN { print "testing..." > "test1.txt" }'
awk 'BEGIN { print "testing..." >> "test1.txt" }'
awk 'BEGIN { print "testing..." | "tr [a-z] [A-Z]" }'
awk 'BEGIN { print "HELLO WORLD" | "tr [A-Z] [a-z]" }'
awk 'BEGIN { print "hello-world" | "tr - _" }'
awk 'BEGIN { print "aaabbb" | "tr a b"; close("tr a b") }'

# Printf formatting
echo "--- Printf formatting ---"
awk 'BEGIN { printf "Hello\nWorld\n" }'
awk 'BEGIN { printf "test\ftest\ftest\ftest\n" }'
awk 'BEGIN { printf "test\ttest\ttest\ttest\n" }'
awk 'BEGIN { printf "test\vtest\vtest\vtest\n" }'
awk 'BEGIN { printf "test1\btest2test3\b\n" }'
awk 'BEGIN { a = "abc"; b = 123; printf "%s -- %d", a, b }'

echo "=== END OF AWK COMMANDS ==="
