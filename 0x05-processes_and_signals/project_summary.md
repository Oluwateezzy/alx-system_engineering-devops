# Project Summary: 0x05-processes_and_signals

This project focuses on understanding and managing processes and signals in a Unix-like environment. The scripts provided demonstrate various commands and techniques for process identification, listing, and termination.

## File Breakdown

| Filename | Command(s) | Description |
|---|---|---|
| `0-what-is-my-pid` | `echo $$` | A simple script that prints its own Process Identification Number (PID). |
| `1-list_your_processes` | `ps -axuf` | This script lists all the user's currently running processes in a detailed format. |
| `2-show_your_bash_pid` | `ps -axuf \| grep -e "bash"` | This script displays the PID of the running `bash` shell process. |
| `3-show_your_bash_pid_made_easy` | `pgrep -l "bash"` | A more straightforward version of the previous script, using `pgrep` to find and display the `bash` PID. |
| `4-to_infinity_and_beyond` | `while true; do echo "To infinity and beyond"; sleep 2; done` | This script creates an infinite loop that prints a message every 2 seconds, demonstrating a long-running process. |
| `5-dont_stop_me_now` | `kill "$(pgrep -f 4-to_infinity_and_beyond)"` | This script terminates the `4-to_infinity_and_beyond` process using the `kill` command. |
| `6-stop_me_if_you_can` | `pkill -f 4-to_infinity_and_beyond` | This script also terminates the `4-to_infinity_and_beyond` process, but uses the `pkill` command for a more direct approach. |
| `67-stop_me_if_you_can` | `pkill -f 7-highlander` | This script is similar to the previous one, but it terminates the `7-highlander` process. |
| `7-highlander` | `trap "echo I am invincible!!!" SIGTERM`<br>`while true; do echo "To infinity and beyond"; sleep 2; done` | Another infinite loop script, but this one includes a `trap` to catch the `SIGTERM` signal and print a message, making it resistant to simple termination. |
| `8-beheaded_process` | `pkill -9 -f 7-highlander` | This script forcefully terminates the `7-highlander` process using `pkill` with the `-9` option (SIGKILL). |
| `README.md` | N/A | Contains a brief title for the project: "Signal and processess". |
| `.5-dont_stop_me_now.swp` | N/A | A temporary swap file, likely created by a text editor like Vim during an editing session. It can usually be safely ignored or deleted. |

## Key Learning Concepts

### Process Management
- **Process ID (PID)**: Each running process has a unique identifier
- **Process Listing**: Using `ps` command with various flags to view running processes
- **Process Finding**: Using `pgrep` and `grep` to locate specific processes

### Signal Handling
- **SIGTERM**: A termination signal that can be caught and handled by processes
- **SIGKILL**: A forceful termination signal that cannot be caught or ignored
- **Signal Trapping**: Using `trap` command to handle signals in bash scripts

### Command Differences
- **kill vs pkill**:
  - `kill` requires a PID and sends signals to specific processes
  - `pkill` can kill processes by name pattern and is more convenient
- **Signal Types**:
  - Default signal (SIGTERM) allows graceful shutdown
  - `-9` signal (SIGKILL) forces immediate termination

## Script Flow and Dependencies

1. **Process Creation**: `4-to_infinity_and_beyond` creates a long-running process
2. **Gentle Termination**: `5-dont_stop_me_now` and `6-stop_me_if_you_can` terminate it normally
3. **Signal-Resistant Process**: `7-highlander` demonstrates signal handling with trap
4. **Forced Termination**: `67-stop_me_if_you_can` and `8-beheaded_process` show how to kill resistant processes

## Technical Notes

- All scripts use `#!/usr/bin/env bash` shebang for portability
- Script `2-show_your_bash_pid` includes shellcheck disable comment for grep usage
- The project demonstrates escalating levels of process control and signal handling
- Scripts are numbered sequentially to show progression from basic to advanced concepts

