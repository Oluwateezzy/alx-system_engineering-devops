# Shell Variables and Expansions - Commands Summary

This document summarizes all the shell commands and scripts found in the `0x03-shell_variables_expansions` project. This appears to be an ALX School project focused on shell variables, expansions, and various bash scripting techniques.

## Project Overview
The project contains 18 shell scripts demonstrating various bash concepts including aliases, variables, arithmetic operations, string manipulations, and advanced expansions.

## Script Analysis

### 0-alias
**File:** `0-alias`
```bash
#!/bin/bash
alias ls="rm *"
```
**Purpose:** Creates a dangerous alias that replaces `ls` command with `rm *` (removes all files)
**Commands Used:** `alias`

### 1-hello_you
**File:** `1-hello_you`
```bash
#!/bin/bash
echo "hello $USER"
```
**Purpose:** Prints a greeting message using the USER environment variable
**Commands Used:** `echo`, variable expansion (`$USER`)

### 2-path
**File:** `2-path`
```bash
#!/bin/bash
export PATH="$PATH:/action"
```
**Purpose:** Adds `/action` directory to the PATH environment variable
**Commands Used:** `export`, PATH manipulation

### 3-paths
**File:** `3-paths`
```bash
#!/bin/bash
echo $PATH | tr ":" "\n" | wc -l
```
**Purpose:** Counts the number of directories in the PATH variable
**Commands Used:** `echo`, `tr`, `wc`, pipe operations

### 4-global_variables
**File:** `4-global_variables`
```bash
#!/bin/bash
printenv
```
**Purpose:** Lists all environment variables
**Commands Used:** `printenv`

### 5-local_variables
**File:** `5-local_variables`
```bash
#!/bin/bash
set
```
**Purpose:** Lists all variables (local and global) and functions
**Commands Used:** `set`

### 6-create_local_variable
**File:** `6-create_local_variable`
```bash
#!/bin/bash
BEST="School"
```
**Purpose:** Creates a local variable named BEST
**Commands Used:** Variable assignment

### 7-create_global_variable
**File:** `7-create_global_variable`
```bash
#!/bin/bash
export BEST="School"
```
**Purpose:** Creates and exports a global variable named BEST
**Commands Used:** `export`

### 8-true_knowledge
**File:** `8-true_knowledge`
```bash
#!/bin/bash
export TRUEKNOWLEDGE = 1209 | echo "$((TRUEKNOWLEDGE + 128))"
```
**Purpose:** Performs arithmetic operation (addition) with environment variable
**Commands Used:** `export`, `echo`, arithmetic expansion `$(())`
**Note:** This script has a syntax error (space around `=` in export)

### 9-divide_and_rule
**File:** `9-divide_and_rule`
```bash
#!/bin/bash
export DIVIDE POWER | echo "$((POWER / DIVIDE))"
```
**Purpose:** Performs division using two environment variables
**Commands Used:** `export`, `echo`, arithmetic expansion `$(())`

### 10-love_exponent_breath
**File:** `10-love_exponent_breath`
```bash
#!/bin/bash
export BREATH LOVE | echo "$((BREATH**LOVE))"
```
**Purpose:** Calculates power/exponent using two environment variables
**Commands Used:** `export`, `echo`, arithmetic expansion with exponentiation `**`

### 11-binary_to_decimal
**File:** `11-binary_to_decimal`
```bash
#!/bin/bash
echo $((2#$BINARY))
```
**Purpose:** Converts binary number to decimal using base conversion
**Commands Used:** `echo`, arithmetic expansion with base notation `2#`

### 12-combinations
**File:** `12-combinations`
```bash
#!/bin/bash
printf "%s\n" {a..z}{a..z} | grep -v "oo"
```
**Purpose:** Generates all two-letter combinations except "oo"
**Commands Used:** `printf`, brace expansion `{a..z}`, `grep` with `-v` flag

### 13-print_float
**File:** `13-print_float`
```bash
#!/bin/bash
printf "%.2f\n" $NUM
```
**Purpose:** Prints a number with 2 decimal places
**Commands Used:** `printf` with format specifier

### 100-decimal_to_hexadecimal
**File:** `100-decimal_to_hexadecimal`
```bash
#!/bin/bash
printf "%x\n" $DECIMAL
```
**Purpose:** Converts decimal number to hexadecimal
**Commands Used:** `printf` with hexadecimal format `%x`

### 101-rot13
**File:** `101-rot13`
```bash
#!/bin/bash
tr "[A-Za-z]" "[N-ZA-Mn-za-m]"
```
**Purpose:** Implements ROT13 cipher (Caesar cipher with 13-character shift)
**Commands Used:** `tr` (translate characters)

### 102-odd
**File:** `102-odd`
```bash
#!/bin/bash
paste - - | cut -f 1
```
**Purpose:** Prints every other line (odd-numbered lines) from input
**Commands Used:** `paste`, `cut`

### 103-water_and_stir
**File:** `103-water_and_stir`
```bash
#!/bin/bash
printf "%o\n" $(( $((5#$(echo $WATER | tr water 01234))) + $((5#$(echo $STIR | tr stir. 01234))) )) | tr 01234567 bestchol
```
**Purpose:** Complex base conversion and character translation operation
**Commands Used:** `printf`, `echo`, `tr`, arithmetic expansion, base-5 conversion, octal output

## Commands Summary by Category

### Variable Operations
- `export` - Create/modify environment variables
- Variable assignment (`VAR="value"`)
- Variable expansion (`$VAR`, `${VAR}`)

### Arithmetic Operations  
- `$(())` - Arithmetic expansion
- Base conversions (`2#`, `5#`)
- Mathematical operators (`+`, `-`, `/`, `**`)

### Text Processing
- `echo` - Display text
- `printf` - Formatted output
- `tr` - Character translation
- `cut` - Extract fields/columns
- `paste` - Merge lines
- `grep` - Pattern matching
- `wc` - Word/line/character counting

### System Information
- `printenv` - List environment variables  
- `set` - List all variables and functions

### Advanced Features
- Brace expansion (`{a..z}`)
- Pipe operations (`|`)
- Format specifiers (`%x`, `%o`, `%.2f`)

## Key Learning Concepts

1. **Environment Variables:** Global vs local variables, PATH manipulation
2. **Arithmetic Expansion:** Mathematical operations in bash
3. **Base Conversions:** Binary, decimal, hexadecimal, octal, custom bases
4. **String Manipulation:** Character translation, pattern matching
5. **Text Processing:** Line manipulation, field extraction
6. **Format Specifiers:** Controlling output format
7. **Advanced Expansions:** Brace expansion for generating sequences

## Notes
- Some scripts (8, 9, 10) have syntax issues with the export statements
- Script 0-alias creates a dangerous alias that could delete files
- Scripts demonstrate various bash scripting techniques commonly used in system administration

---
*Generated from analysis of 0x03-shell_variables_expansions directory*
