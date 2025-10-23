# 🧭 **Linux Command Reference — Skylines Solutions**

This file documents the essential Linux commands and concepts I’ve learned and practiced while simulating a real-world company environment using directories and files in WSL (Ubuntu on Windows).

---

## Command
`pwd`

### Description
Prints the current working directory — shows the absolute path you’re in.

### Use Cases
- Check your current directory.
- Confirm that you’re inside the correct department (e.g., `/home/username/Skylines_Solutions/HR`).

### Notes
Use this often when navigating multiple nested folders.

---

## Command
`ls` / `ls -l` / `ls -a`

### Description
Lists files and directories in the current location.

### Use Cases
- View files inside a department folder.
- Use `ls -l` to check permissions and details.
- Use `ls -a` to show hidden files like `.bashrc`.

### Notes
Combine flags for more detail: `ls -la`.

---

## Command
`cd`

### Description
Changes the current directory.

### Use Cases
- Move into department folders, e.g.:
  ```bash
  cd ~/Skylines_Solutions/Finance
  ```
- Go back one level:
  ```bash
  cd ..
  ```

### Notes
Use `cd ~` to return to your home directory.

---

## Command
`mkdir`

### Description
Creates one or more directories.

### Use Cases
- Create department folders:
  ```bash
  mkdir HR Finance Sales Development
  ```
- Create subfolders for projects:
  ```bash
  mkdir Development/ProjectA
  ```

### Notes
Use `-p` to create nested directories in one go:
```bash
mkdir -p Development/Backend/API
```

---

## Command
`rmdir` / `rm -r`

### Description
Removes directories.

### Use Cases
- Remove empty folders:
  ```bash
  rmdir old_folder
  ```
- Remove folders with files:
  ```bash
  rm -r Development/OldProject
  ```

### Notes
Use `-f` for force deletion (`rm -rf`) — **handle carefully**.

---

## Command
`touch`

### Description
Creates an empty file or updates the timestamp of an existing file.

### Use Cases
- Create department-specific documents:
  ```bash
  touch HR/policies.txt
  ```
- Create multiple files:
  ```bash
  touch Finance/budget.txt Finance/report.txt
  ```

### Notes
I have customized this command in `.bashrc` to show confirmation messages:
```bash
touch() {
  for file in "$@"; do
    command touch "$file" && echo "Created/updated: $file"
  done
}
```
just prints created/updated on terminal when the command is executed
---

## Command
`mv`

### Description
Moves or renames files and directories.

### Use Cases
- Move files between departments:
  ```bash
  mv Sales/lead_data.txt Finance/
  ```
- Rename a file:
  ```bash
  mv report.txt final_report.txt
  ```

### Notes
Useful for reorganizing files in your company structure.

---

## Command
`cp`

### Description
Copies files and directories.

### Use Cases
- Duplicate a report:
  ```bash
  cp Finance/report.txt Finance/report_backup.txt
  ```
- Copy entire department folder:
  ```bash
  cp -r Sales Sales_Backup
  ```

### Notes
Use `-r` for recursive copy (folders).

---

## Command
`cat`

### Description
Displays file contents in the terminal.

### Use Cases
- Quickly read a policy document:
  ```bash
  cat HR/policies.txt
  ```

### Notes
For longer files, use `less` or `more`.

---

## Command
`echo`

### Description
Prints text to the terminal or writes text into a file.

### Use Cases
- Display simple messages:
  ```bash
  echo "Welcome to Skylines Solutions!"
  ```
- Add data to files:
  ```bash
  echo "Quarterly Report 2025" > Finance/report.txt
  ```

### Notes
Use `>>` to append instead of overwrite.

---

## Command
`nano` / `vim`

### Description
Opens text editors inside the terminal.

### Use Cases
- Edit configuration files like `.bashrc`.
- Create or modify department documents.

### Notes
Use `Ctrl + O`, `Enter`, `Ctrl + x` to save and exit `nano`.

---

## Command
`tar -czvf Skyline_Backup.tar.gz ~/Skylines_Solutions`

### Description
Compresses the entire *Skylines_Solutions* folder into a `.tar.gz` archive.

### Use Cases
- Backup company data for safekeeping.

### Notes
Flags:
- `c` → create archive  
- `z` → compress with gzip  
- `v` → verbose (show progress)  
- `f` → specify filename

---

## Command
`alias`

### Description
Creates shortcuts for commands.

### Use Cases
- Shorten repetitive commands, e.g.:
  ```bash
  alias ll='ls -la'
  ```
- Custom command to open anime website:
  ```bash
  alias anime='google-chrome https://animesuge.bz/home'
  ```

### Notes
Aliases are stored in `.bashrc`.

---

## Command
`source ~/.bashrc`

### Description
Reloads the `.bashrc` file to apply recent changes.

### Use Cases
- Apply new aliases or functions without restarting the terminal.

### Notes
Equivalent to reopening your terminal session.

---

## Command
`which` / `type`

### Description
Displays the location or definition of a command.

### Use Cases
- Check where `touch` or other commands are executed from:
  ```bash
  type touch
  ```

### Notes
Useful for debugging aliases or functions.

---

## Command
`clear`

### Description
Clears the terminal screen.

### Use Cases
- Reset the workspace view before running a new set of commands.

---

## Command
`sudo`

### Description
Executes a command with administrative (root) privileges.

### Use Cases
- Run software installation or restricted file operations.

### Notes
Use carefully — can modify system-level files.

---

## Command
`history`

### Description
Shows the list of previously executed commands.

### Use Cases
- Review your recent commands.
- Re-run a command using `!<number>`.

---

## Command
`chmod` / `chown`

### Description
Changes file permissions and ownership.

### Use Cases
- Grant execute permission:
  ```bash
  chmod +x script.sh
  ```
- Change file owner:
  ```bash
  sudo chown user:user file.txt
  ```

### Notes
Essential for secure multi-user environments.

---

## Searching Text

### `grep "<pattern>" <file>`

**Description:** 
- Searches for text matching a pattern in a file.  

**Use Cases:**
- Find warnings or firewall messages in `system.log`.

### `grep -i "<pattern>" <file>`

**Description:**
- Case-insensitive search for a pattern in a file.
 
**Use Cases:**
- Search for `"warning"` or `"firewall"` regardless of capitalization.

### `grep -n "<pattern>" <file>`

**Description:** 
-Shows line numbers along with matching lines.  

**Use Cases:** 
-Locate exactly where warnings or logs occur.

### `grep -l "<pattern>" <file(s)>`

**Description:** 
-Lists filenames that contain the matching pattern.  

**Use Cases:** 
-Identify which files contain `"Warning"` or `"logo"`.

### `grep -R / -r "<pattern>" <directory>`

**Description:** 
-Recursively searches for a pattern in all files under a directory.  

**Use Cases:** 
-Find `"logo"` across all files in `Marketing/assets/`.


---

## Command
`find`

### Description
Searches for files and directories in a given path.

### Use Cases
- Find all `.txt` files in a department:
  ```bash
  find . -name "*.txt"
  ```

---

## Command
`df -h`

### Description
Shows disk usage and available space.

### Use Cases
- Check storage usage before creating backups.

---

## Command
`du -sh`

### Description
Displays total disk space used by a directory.

### Use Cases
- Check how much space the `Development` folder uses.

---

## Command
`whoami`

### Description
Displays the current logged-in user.

### Use Cases
- Confirm your user privileges inside WSL.

## System Info & WSL

### `uname -a`

**Description:** 
- Shows full system information.  

**Use Cases:** 
- Check Linux kernel version in WSL.

### `lsb_release -a`

**Description:** 
- Shows Linux distribution details.  

**Use Cases:** 
- Confirm Ubuntu version running on WSL.

### `hostname`

**Description:** 
- Shows the system hostname.  

**Use Cases:** 
- Identify machine name in WSL.

### `hostnamectl`

**Description:** 
- Displays system info (only works with systemd).  

**Use Cases:** 
- Not available in WSL; will fail with systemd error.

### `ps aux`

**Description**
- Displays detailed information about all running processes, including the user, CPU and memory usage, and the command that started each process.

**Use Cases**
- Monitor system performance, identify resource-heavy processes, or troubleshoot unresponsive applications.

---

# 🏗️ Project-Specific Context

I’ve been simulating a **real-world company (Skylines Solutions)** using these commands:
- Created directories: `HR`, `Finance`, `Sales`, `Development`
- Created department-specific files using `touch`
- Moved files between departments using `mv`
- Backed up the company using `tar`
- Customized `.bashrc` with aliases and functions for productivity
- Used WSL Ubuntu terminal integrated with Windows Desktop for workflow efficiency
