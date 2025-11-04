# 🧭 **Linux Command Reference — Skylines Solutions**

This file documents the essential Linux commands and concepts I’ve learned and practiced while simulating a real-world company environment using directories and files in WSL (Ubuntu on Windows).

---

### Command Line Keywords
---

&nbsp;

### 1. Print Working directory(shows Current Location)
```
pwd
```
### Description
Prints the current working directory — shows the absolute path you’re in.

### Use Cases
- Check your current directory.
- Confirm that you’re inside the correct department (e.g., `/home/username/Skylines_Solutions/HR`).

### Notes
Use this often when navigating multiple nested folders.

&nbsp;

### 2. ls - lists the contents 
```bash
ls -la
```

### Description
Lists files and directories in the current location.

### Use Cases
- View files inside a department folder.
- Use `ls -l` to check permissions and details.
- Use `ls -a` to show hidden files like `.bashrc`.

### Notes
Combine flags for more detail: 
```
ls -la
```

&nbsp;

**3. Cd - change Directory**
```
cd
```


### Description
Changes the current directory.

### Use Cases
- Move into department folders, e.g.:
  `cd ~/Skylines_Solutions/Finance`
- Go back one level:
  `cd ..`

### Notes
Use `cd ~` to return to your home directory.

&nbsp;

### 4. mkdir- make directory ( creates folders )

```bash
mkdir
```

### Description
Creates one or more directories.

### Use Cases
- Create department folders:
  `mkdir HR Finance Sales Development`
- Create subfolders for projects:
  `mkdir Development/ProjectA`

### Notes
Use `-p` to create nested directories in one go:
`mkdir -p Development/Backend/API`

&nbsp;

### 5. rmdir - remove directory (❗ Danger )
&nbsp;

```
rmdir
``` 

```
rm -r
```

### Description
Removes directories.

### Use Cases
- Remove empty folders:
  `rmdir old_folder`
- Remove folders with files:
  `rm -r Development/OldProject`

### Notes
Use `-f` for force deletion (`rm -rf`) — **handle carefully**.

&nbsp;

### 6. touch - mostly used to create files
```bash
touch
```

### Description
Creates an empty file or updates the timestamp of an existing file.

### Use Cases
- Create department-specific documents:
  `touch HR/policies.txt`
- Create multiple files:
  `touch Finance/budget.txt Finance/report.txt`


- just prints created/updated on terminal when the command is executed

&nbsp;
---
### 7. Mv - move
```bash
mv
```

### Description
Moves or renames files and directories.

### Use Cases
- Move files between departments:
  `mv Sales/lead_data.txt Finance/`
- Rename a file:
  `mv report.txt final_report.txt`
  

### Notes
Useful for reorganizing files in your company structure.
&nbsp;
### 8. CP - copy
```
cp
```

### Description
Copies files and directories.

### Use Cases
- Duplicate a report:
  `cp Finance/report.txt Finance/report_backup.txt`
  
- Copy entire department folder:
  `cp -r Sales Sales_Backup`
  

### Notes
Use `-r` for recursive copy (folders).

&nbsp;

### 9. cat -  shows the contents

```
cat
```

### Description
Displays file contents in the terminal.

### Use Cases
- Quickly read a policy document:
  `cat HR/policies.txt`
  

### Notes
For longer files, use `less` or `more`.

&nbsp;

### 10. echo - prints on the terminal
```
echo
```

### Description
Prints text to the terminal or writes text into a file.

### Use Cases
- Display simple messages:
 ` echo "Welcome to Skylines Solutions!"`
  
- Add data to files:
  `echo "Quarterly Report 2025" > Finance/report.txt`
  

### Notes
Use `>>` to append instead of overwrite.

&nbsp;

### 11. nano/vim - text editor
```
nano file_name
```
```
 vim file_name
```

### Description
Opens text editors inside the terminal.

### Use Cases
- Edit configuration files like `.bashrc`.
- Create or modify department documents.

### Notes
Use `Ctrl + O`, `Enter`, `Ctrl + x` to save and exit `nano`.

---

### Archiveing

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

### Aliases - can also be used instead of the original command
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

I have customized this command in `.bashrc` to show confirmation messages:
```bash
touch() {
  for file in "$@"; do
    command touch "$file" && echo "Created/updated: $file"
  done
}
```

---

### 12. source - updates the temrinal
```
source ~/.bashrc
```

### Description
Reloads the `.bashrc` file to apply recent changes.

### Use Cases
- Apply new aliases or functions without restarting the terminal.

### Notes
Equivalent to reopening your terminal session.

---

### 13. which/type- shows the definition of commmand
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

&nbsp;

### 14. clear - cleans the slate .
```
clear
```

### Description
Clears the terminal screen.

### Use Cases
- Reset the workspace view before running a new set of commands.
  
&nbsp;

### 15. Sudo - The king
```
sudo
```

### Description
Executes a command with administrative (root) privileges.

### Use Cases
- Run software installation or restricted file operations.

### Notes
Use carefully — can modify system-level files.

&nbsp;

### 16. histoyr - not your browser history
```
history
```

### Description
Shows the list of previously executed commands.

### Use Cases
- Review your recent commands.
- Re-run a command using `!<number>`.
  
&nbsp;

### 17. The Admin Shit
```
chmod
```
```
chown
```

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

&nbsp;

### 18. Searching Text

 ```
grep "<pattern>" <file>
 ```

**Description:** 
- Searches for text matching a pattern in a file.  

**Use Cases:**
- Find warnings or firewall messages in `system.log`.

 `grep -i "<pattern>" <file>`

**Description:**
- Case-insensitive search for a pattern in a file.
 
**Use Cases:**
- Search for `"warning"` or `"firewall"` regardless of capitalization.

 `grep -n "<pattern>" <file>`

**Description:** 
-Shows line numbers along with matching lines.  

**Use Cases:** 
-Locate exactly where warnings or logs occur.

 `grep -l "<pattern>" <file(s)>`

**Description:** 
-Lists filenames that contain the matching pattern.  

**Use Cases:** 
-Identify which files contain `"Warning"` or `"logo"`.

 `grep -R / -r "<pattern>" <directory>`

**Description:** 
-Recursively searches for a pattern in all files under a directory.  

**Use Cases:** 
-Find `"logo"` across all files in `Marketing/assets/`.

---

### 19. The OG with limitations
```
find
```

### Description
Searches for files and directories in a given path.

### Use Cases
- Find all `.txt` files in a department:
  ```bash
  find . -name "*.txt"
  ```
  
  &nbsp;
  
### 20. checks your system shit
  ```
  df -h
  ```

### Description
Shows disk usage and available space.

### Use Cases
- Check storage usage before creating backups.
  
&nbsp;

### 21. see how much shit is on
  ```
   du -sh
  ```

### Description
Displays total disk space used by a directory.

### Use Cases
- Check how much space the `Development` folder uses.
  
&nbsp;

### 22. whoami - i dont know
  ```
  whoami
  ```

### Description
Displays the current logged-in user.

### Use Cases
- Confirm your user privileges inside WSL.

---

## System Info & WSL

---
### 23. uname - check for yourself
   ```
   uname -a
  ```

**Description:** 
- Shows full system information.  

**Use Cases:** 
- Check Linux kernel version in WSL.

&nbsp;

### 24. lsb- release
   ```
   lsb_release -a
  ```

**Description:** 
- Shows Linux distribution details.  

**Use Cases:** 
- Confirm Ubuntu version running on WSL.

- &nbsp;

### 25. hostname - shows my user name in my local machine
   ```
   hostname
  ```

**Description:** 
- Shows the system hostname.  

**Use Cases:** 
- Identify machine name in WSL.

&nbsp;

### 26. hostnamectl - Show this error on wsl (windows )
   ```
   hostnamectl
  ```

**Description:** 
- Displays system info (only works with systemd).  

**Use Cases:** 
- Not available in WSL; will fail with systemd error.

  ### Notes:
  The Error:
  -System has not been booted with systemd as init system (PID 1). Can't operate.
Failed to connect to bus: Host is down

### This occurs when:

- You’re running Linux inside WSL (Windows Subsystem for Linux) — older versions (WSL1 or some setups of WSL2) don’t use systemd by default.

- You’re in a Docker container, minimal chroot environment, or a lightweight distro that doesn’t include systemd.

&nbsp;

### 27. process status
   ```
   ps aux
  ```

**Description**

- Displays detailed information about all running processes, including the user, CPU and memory usage, and the command that started each process.

**Use Cases**

- Monitor system performance, identify resource-heavy processes, or troubleshoot unresponsive applications.

---

## Text - commands

stderr (Standard Error) / `2>` / `2>&1`

**Description**

- Is the dedicated output stream for a program's error messages and diagnostic   output. It uses File Descriptor 2.

**Use Cases**

- Use 2> filename to redirect only the errors into a specific log file, separating them from regular output.

- Use 2> /dev/null to silently discard unwanted error messages, such as "Permission denied" warnings.

- Use 2>&1 to combine the error stream and standard output stream so both go to the same location, like a log file.

  ## pipe and tee

  `|`- pipe operator
  `tee` - tee

  **Description**
`|` the pipe operator takes the standard output of the command on its left and uses it as the standard input ofr the command on its right

`tee` splits the output stream into two directions, one is standard output (terminal) and another to a specified file

  **usecase**

  example
```bash ls -la /etc | less ```
     This will list the command form the /etc directory, and      opens in page by page mannner as the less command is         used 

 example 
```bash ls -la /etc | tee etc_listing.txt | grep "conf" ```

 **This command does three things:**
 - it lists the contents of teh /etc directory.
 - it pipes that ouput to `tee`, which savesa a copy to etc_listing.txt and also passes it along
 - The output from `tee` is then piped to grep, which filters for lines containing "conf"


---

# 🏗️ Project-Specific Context

I’ve been simulating a **real-world company (Skylines Solutions)** using these commands:
- Created directories: `HR`, `Finance`, `Sales`, `Development`
- Created department-specific files using `touch`
- Moved files between departments using `mv`
- Backed up the company using `tar`
- Customized `.bashrc` with aliases and functions for productivity
- Used WSL Ubuntu terminal integrated with Windows Desktop for workflow efficiency
