
# Top 100 Linux Shell Commands for DevOps Engineers

### 1. `ls`
List files and directories in the current directory.

```bash
# List files in the current directory with detailed information
ls -l

# List all files, including hidden files
ls -la

# List files with human-readable file sizes
ls -lh
```

### 2. `cd`
Change the current directory.

```bash
# Change to the home directory
cd ~

# Change to the parent directory
cd ..

# Change to a specific directory
cd /path/to/directory
```

### 3. `pwd`
Print the current working directory.

```bash
# Display the current directory
pwd
```

### 4. `mkdir`
Create a new directory.

```bash
# Create a new directory named "newdir"
mkdir newdir

# Create multiple directories at once
mkdir dir1 dir2 dir3

# Create a directory and its parent directories if they don't exist
mkdir -p path/to/newdir
```

### 5. `rmdir`
Remove an empty directory.

```bash
# Remove an empty directory named "emptydir"
rmdir emptydir

# Remove multiple empty directories
rmdir dir1 dir2
```

### 6. `rm`
Remove files or directories.

```bash
# Remove a file
rm file.txt

# Remove a directory and its contents
rm -r directoryname

# Forcefully remove a directory and its contents without asking for confirmation
rm -rf directoryname
```

### 7. `cp`
Copy files or directories.

```bash
# Copy a file to another location
cp source.txt destination.txt

# Copy a directory and its contents to another location
cp -r sourcedir destinationdir

# Copy multiple files to a directory
cp file1.txt file2.txt destinationdir/
```

### 8. `mv`
Move or rename files and directories.

```bash
# Rename a file
mv oldname.txt newname.txt

# Move a file to another directory
mv source.txt destinationdir/

# Move multiple files to a directory
mv file1.txt file2.txt destinationdir/
```

### 9. `cat`
Display the contents of a file.

```bash
# Display the contents of a file
cat file.txt

# Concatenate multiple files and display the output
cat file1.txt file2.txt

# Display the contents of a file with line numbers
cat -n file.txt
```

### 10. `echo`
Display a line of text.

```bash
# Display a message
echo "Hello, World!"

# Append a message to a file
echo "This is a new line" >> file.txt

# Display the value of a variable
echo $HOME
```

---

### 11. `man`
Display the manual page for a command.

```bash
# Display the manual page for the ls command
man ls

# Display the manual page for the echo command
man echo

# Search the manual pages for a keyword
man -k keyword
```

### 12. `grep`
Search for a pattern in files.

```bash
# Search for the word "example" in file.txt
grep "example" file.txt

# Search for the word "example" in all .txt files in the current directory
grep "example" *.txt

# Search for the word "example" and display line numbers where it's found
grep -n "example" file.txt
```

### 13. `find`
Search for files in a directory hierarchy.

```bash
# Find all .txt files in the current directory and its subdirectories
find . -name "*.txt"

# Find all directories named "exampledir" in the current directory
find . -type d -name "exampledir"

# Find all .jpg files larger than 1MB
find . -name "*.jpg" -size +1M
```

### 14. `touch`
Create an empty file or update the access and modification times of a file.

```bash
# Create a new empty file named "newfile.txt"
touch newfile.txt

# Update the access time of an existing file
touch -a existingfile.txt

# Update the access and modification times of multiple files
touch file1.txt file2.txt
```

### 15. `chmod`
Change the permissions of a file or directory.

```bash
# Give execute permission to the owner of a script file
chmod u+x script.sh

# Give read and write permissions to the owner and group of a file
chmod ug+rw file.txt

# Remove write permission from others for a directory
chmod o-w directoryname
```

### 16. `chown`
Change the owner and group of a file or directory.

```bash
# Change the owner of a file to "username"
chown username file.txt

# Change the owner and group of a directory
chown username:groupname directoryname

# Change the owner and group of a directory and its contents recursively
chown -R username:groupname directoryname
```

### 17. `df`
Display disk space usage of file systems.

```bash
# Display disk space usage for all file systems
df

# Display disk space usage with human-readable sizes
df -h

# Display disk space usage for a specific file system
df /dev/sda1
```

### 18. `du`
Estimate file and directory space usage.

```bash
# Display the size of a directory and its subdirectories
du /path/to/directory

# Display a summary size for a directory
du -s /path/to/directory

# Display sizes in human-readable format
du -h /path/to/directory
```

### 19. `ps`
Report a snapshot of the current processes.

```bash
# Display a snapshot of all current processes
ps aux

# Display processes for a specific user
ps -u username

# Display a process tree
ps -e -o pid,ppid,cmd --forest
```

### 20. `top`
Display Linux tasks in real-time.

```bash
# Start top to monitor system processes in real-time
top

# Display processes for a specific user in top
top -u username

# Display the top 10 processes sorted by memory usage
top -o %MEM
```

---

### 21. `kill`
Send a signal to a process.

```bash
# Send the TERM signal to a process with PID 1234 (gracefully ask it to terminate)
kill 1234

# Forcefully terminate a process with PID 1234 using the KILL signal
kill -9 1234

# Send the HUP signal to a process (often used to tell a process to reload its configuration)
kill -HUP 1234
```

### 22. `alias`
Create an alias for a command.

```bash
# Create a temporary alias "l" for "ls -la"
alias l="ls -la"

# Remove an alias
unalias l

# View all current aliases
alias
```

### 23. `tar`
Archive and compress files.

```bash
# Create a tar archive of a directory
tar cvf archive.tar directoryname/

# Extract a tar archive
tar xvf archive.tar

# Create a gzipped tar archive
tar czvf archive.tar.gz directoryname/
```

### 24. `gzip`
Compress or decompress files.

```bash
# Compress a file
gzip file.txt

# Decompress a gzipped file
gzip -d file.txt.gz

# Compress multiple files
gzip file1.txt file2.txt
```

### 25. `gunzip`
Decompress files compressed by gzip.

```bash
# Decompress a gzipped file
gunzip file.txt.gz
```

### 26. `zip`
Package and compress files.

```bash
# Create a zip archive of a directory
zip -r archive.zip directoryname/

# Extract a zip archive
unzip archive.zip

# List the contents of a zip archive
unzip -l archive.zip
```

### 27. `unzip`
Extract files from a ZIP archive.

```bash
# Extract a zip archive
unzip archive.zip

# Extract a zip archive to a specific directory
unzip archive.zip -d /path/to/directory
```

### 28. `head`
Output the first part of files.

```bash
# Display the first 10 lines of a file
head file.txt

# Display the first 20 lines of a file
head -n 20 file.txt
```

### 29. `tail`
Output the last part of files.

```bash
# Display the last 10 lines of a file
tail file.txt

# Display the last 20 lines of a file
tail -n 20 file.txt

# Monitor changes to a file in real-time
tail -f /var/log/syslog
```

### 30. `wc`
Print newline, word, and byte counts for files.

```bash
# Count lines in a file
wc -l file.txt

# Count words in a file
wc -w file.txt

# Display lines, words, and byte counts for a file
wc file.txt
```

---

### 31. `cut`
Remove sections from each line of files.

```bash
# Extract the first field from a file delimited by a comma
cut -d ',' -f 1 file.txt

# Extract the first and third fields from a file delimited by a comma
cut -d ',' -f 1,3 file.txt

# Extract characters 1 to 5 from each line of a file
cut -c 1-5 file.txt
```

### 32. `sort`
Sort lines of text files.

```bash
# Sort a file in ascending order
sort file.txt

# Sort a file in descending order
sort -r file.txt

# Sort a file based on the second field delimited by a comma
sort -t ',' -k 2 file.txt
```

### 33. `uniq`
Report or omit repeated lines.

```bash
# Remove duplicate adjacent lines from a sorted file
uniq file.txt

# Display the count of occurrences for each line in a file
uniq -c file.txt

# Display only duplicated lines in a file
uniq -d file.txt
```

### 34. `sed`
Stream editor for filtering and transforming text.

```bash
# Replace all occurrences of "old" with "new" in a file
sed 's/old/new/g' file.txt

# Delete all lines containing the word "delete" in a file
sed '/delete/d' file.txt

# Replace the first occurrence of "old" with "new" in each line of a file
sed 's/old/new/' file.txt
```

### 35. `awk`
Pattern scanning and text processing language.

```bash
# Print the first field of a file delimited by a comma
awk -F ',' '{ print $1 }' file.txt

# Sum the values in the second column of a file and print the total
awk -F ',' '{ sum += $2 } END { print sum }' file.txt

# Print lines where the first field is greater than 10
awk -F ',' '$1 > 10' file.txt
```

### 36. `curl`
Transfer data from or to a server.

```bash
# Fetch the content of a webpage
curl http://example.com

# Send a POST request with data
curl -X POST -d "key=value" http://example.com/post_endpoint

# Download a file and save it locally
curl -O http://example.com/file.zip
```

### 37. `wget`
Retrieve files from the web.

```bash
# Download a file from the web
wget http://example.com/file.zip

# Download a file and save it with a different name
wget -O newname.zip http://example.com/file.zip

# Download all files from a directory (recursively)
wget -r -np http://example.com/directory/
```

### 38. `ssh`
OpenSSH SSH client (remote login program).

```bash
# SSH into a remote server
ssh username@remote_server

# SSH into a remote server using a specific port
ssh -p 2222 username@remote_server

# SSH and execute a command on a remote server
ssh username@remote_server 'ls -la'
```

### 39. `scp`
Secure copy (remote file copy program).

```bash
# Copy a file to a remote server
scp file.txt username@remote_server:/path/to/destination/

# Copy a file from a remote server to the local machine
scp username@remote_server:/path/to/file.txt /local/destination/

# Copy a directory to a remote server
scp -r directoryname username@remote_server:/path/to/destination/
```

### 40. `rsync`
Remote file and directory synchronization tool.

```bash
# Synchronize a local directory to a remote directory
rsync -av /local/directory/ username@remote_server:/path/to/destination/

# Synchronize a remote directory to a local directory
rsync -av username@remote_server:/path/to/directory/ /local/destination/

# Synchronize a local directory to a remote directory using compression and showing progress
rsync -avzP /local/directory/ username@remote_server:/path/to/destination/
```

---

### 41. `bg`
Put a process into the background.

```bash
# Put the most recent process into the background
bg

# Put a specific job (e.g., job 1) into the background
bg %1
```

### 42. `fg`
Bring a process to the foreground.

```bash
# Bring the most recent background process to the foreground
fg

# Bring a specific job (e.g., job 1) to the foreground
fg %1
```

### 43. `jobs`
Display the status of jobs in the current session.

```bash
# List all jobs in the current session
jobs

# List all running jobs
jobs -r

# List all stopped jobs
jobs -s
```

### 44. `history`
Display the command history.

```bash
# Display the command history
history

# Display the last 10 commands
history 10

# Search the history for a specific command
history | grep "command_name"
```

### 45. `crontab`
Schedule tasks with cron.

```bash
# Edit the crontab for the current user
crontab -e

# Display the current user's crontab
crontab -l

# Remove the current user's crontab
crontab -r
```

### 46. `date`
Display or set the system date and time.

```bash
# Display the current date and time
date

# Display the current date in a specific format (e.g., "+%Y-%m-%d" for YYYY-MM-DD)
date "+%Y-%m-%d"

# Set the system date and time
sudo date MMDDhhmm[[CC]YY][.ss]
```

### 47. `cal`
Display a calendar.

```bash
# Display the current month's calendar
cal

# Display a specific year's calendar
cal 2025

# Display a specific month and year's calendar
cal 12 2025
```

### 48. `uptime`
Display how long the system has been running.

```bash
# Display the system's uptime
uptime
```

### 49. `w`
Show who is logged on and what they are doing.

```bash
# Display information about currently logged-in users
w
```

### 50. `useradd`
Create a new user account.

```bash
# Create a new user named "newuser"
sudo useradd newuser

# Create a new user with a home directory and a specific shell
sudo useradd -m -s /bin/bash newuser

# Create a new user with a specific user ID and group ID
sudo useradd -u 1002 -g 1002 newuser
```

---

### 51. `userdel`
Delete a user account.

```bash
# Delete a user named "olduser"
sudo userdel olduser

# Delete a user and their home directory
sudo userdel -r olduser
```

### 52. `passwd`
Change or set the password for a user.

```bash
# Change the password for the current user
passwd

# Set a new password for a user named "someuser"
sudo passwd someuser

# Lock a user's password
sudo passwd -l someuser
```

### 53. `groupadd`
Create a new group.

```bash
# Create a new group named "newgroup"
sudo groupadd newgroup
```

### 54. `groupdel`
Delete a group.

```bash
# Delete a group named "oldgroup"
sudo groupdel oldgroup
```

### 55. `chgrp`
Change the group ownership of a file or directory.

```bash
# Change the group ownership of a file to "somegroup"
sudo chgrp somegroup file.txt

# Change the group ownership of a directory and its contents recursively
sudo chgrp -R somegroup directoryname
```

### 56. `chmod`
Change the permissions of a file or directory.

```bash
# Give execute permission to the owner of a file
chmod u+x file.sh

# Set specific permissions for a file (e.g., 755)
chmod 755 file.sh

# Set permissions for a directory and its contents recursively
chmod -R 755 directoryname
```

### 57. `chown`
Change the owner and group of a file or directory.

```bash
# Change the owner of a file to "someuser"
sudo chown someuser file.txt

# Change the owner and group of a file
sudo chown someuser:somegroup file.txt

# Change the owner of a directory and its contents recursively
sudo chown -R someuser directoryname
```

### 58. `ln`
Create a link to a file or directory.

```bash
# Create a symbolic link to a file
ln -s targetfile linkname

# Create a hard link to a file
ln targetfile linkname
```

### 59. `df`
Report file system disk space usage.

```bash
# Display disk space usage for all file systems
df

# Display disk space usage with human-readable sizes
df -h
```

### 60. `du`
Estimate file space usage.

```bash
# Display the estimated space usage of a directory and its subdirectories
du directoryname

# Display a summary size of a directory
du -sh directoryname
```

"newgroup"
sudo chgrp newgroup file.txt

# Change the group ownership of a directory and its contents recursively
sudo chgrp -R newgroup directoryname/
```

### 56. `ping`
Send ICMP ECHO_REQUEST packets to network hosts.

```bash
# Ping a host to check connectivity
ping example.com

# Ping a host and send only 4 packets
ping -c 4 example.com

# Continuously ping a host until stopped (useful for monitoring)
ping -t example.com
```

### 57. `netstat`
Print network connections, routing tables, interface statistics, etc.

```bash
# List all open ports
netstat -tuln

# Display active TCP connections
netstat -t

# Display routing table
netstat -r
```

### 58. `ifconfig`
Display or configure network interfaces.

```bash
# Display information about all network interfaces
ifconfig

# Display information about a specific network interface (e.g., eth0)
ifconfig eth0

# Set a new IP address for a network interface
sudo ifconfig eth0 192.168.1.10
```

### 59. `iptables`
Administer IP packet filter rules.

```bash
# List all rules in the filter table
sudo iptables -L

# Block all incoming traffic from a specific IP address
sudo iptables -A INPUT -s 192.168.1.10 -j DROP

# Allow SSH traffic on port 22
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```

### 60. `traceroute`
Print the route packets trace to a network host.

```bash
# Trace the route to a specific host
traceroute example.com
```

---

### 71. `htop`
Interactive process viewer (enhanced version of top).

```bash
# Start htop to monitor system processes interactively
htop
```

### 72. `lsof`
List open files.

```bash
# List all open files
lsof

# List all open files for a specific user
lsof -u username

# List all open files for a specific process ID
lsof -p PID
```

### 73. `chmod`
Change file permissions.

```bash
# Give execute permission to the owner of a file
chmod u+x filename

# Set specific permissions for a file (read, write, execute for owner; read for group and others)
chmod 744 filename

# Recursively give read and execute permissions to a directory and its contents
chmod -R 755 directoryname/
```

### 74. `chown`
Change file owner and group.

```bash
# Change the owner of a file to "username"
chown username filename

# Change the owner and group of a file
chown username:groupname filename

# Recursively change the owner and group of a directory and its contents
chown -R username:groupname directoryname/
```

### 75. `ln`
Create links between files.

```bash
# Create a symbolic link
ln -s target_file symlink_name

# Create a hard link
ln target_file hardlink_name
```

### 76. `watch`
Execute a program periodically, showing output fullscreen.

```bash
# Display the contents of a directory every 2 seconds
watch ls -la
```

### 77. `which`
Locate a command.

```bash
# Show the full path of a command
which ls
```

### 78. `whereis`
Locate the binary, source, and manual page files for a command.

```bash
# Find the binary, source, and manual pages for a command
whereis ls
```

### 79. `locate`
Find files by name.

```bash
# Find files that match a pattern
locate pattern
```

### 80. `type`
Describe a command.

```bash
# Indicate how a command name would be interpreted
type ls
```

---

### 81. `alias`
Create an alias for a command.

```bash
# Create a temporary alias "l" for "ls -la"
alias l="ls -la"

# Remove an alias
unalias l

# View all current aliases
alias
```

### 82. `unalias`
Remove an alias.

```bash
# Remove an alias named "l"
unalias l
```

### 83. `export`
Set an environment variable.

```bash
# Export a new environment variable
export VAR_NAME=value

# View the value of an environment variable
echo $VAR_NAME
```

### 84. `env`
Display, set, or remove environment variables.

```bash
# Display all environment variables
env

# Execute a command with a modified environment
env VAR_NAME=value command_to_run
```

### 85. `printenv`
Print environment variables.

```bash
# Display the value of a specific environment variable
printenv VAR_NAME

# Display all environment variables
printenv
```

### 86. `set`
Set or unset shell options and positional parameters.

```bash
# Display all shell options and environment variables
set
```

### 87. `unset`
Unset shell variables and functions.

```bash
# Remove an environment variable
unset VAR_NAME
```

### 88. `ulimit`
Limit user resources.

```bash
# Display the maximum file size that can be created
ulimit -f

# Set the maximum number of processes for the current session
ulimit -u 2048
```

### 89. `ssh-keygen`
Generate, manage, and convert SSH keys.

```bash
# Generate a new SSH key pair
ssh-keygen

# Generate a new SSH key pair with a specific algorithm and size
ssh-keygen -t rsa -b 4096
```

### 90. `ssh-copy-id`
Copy an SSH key to a remote host.

```bash
# Copy the default SSH key to a remote host
ssh-copy-id username@remote_host

# Copy a specific SSH key to a remote host
ssh-copy-id -i ~/.ssh/my_key.pub username@remote_host
```

---

### 91. `ssh-agent`
SSH key manager.

```bash
# Start the ssh-agent in the background
eval $(ssh-agent -s)

# Add an SSH key to the agent
ssh-add ~/.ssh/my_key
```

### 92. `ssh-add`
Add or remove identities for the SSH authentication agent.

```bash
# Add the default identity (usually ~/.ssh/id_rsa)
ssh-add

# Add a specific identity
ssh-add ~/.ssh/my_key

# Remove all identities from the agent
ssh-add -D
```

### 93. `nano`
Edit files in the console.

```bash
# Edit a file using nano
nano filename.txt
```

### 94. `vim`
Vi IMproved, a text editor.

```bash
# Edit a file using vim
vim filename.txt
```

### 95. `clear`
Clear the terminal screen.

```bash
# Clear the screen
clear
```

### 96. `tput`
Initialize a terminal or query terminfo database.

```bash
# Clear the screen using tput
tput clear
```

### 97. `logout`
Exit a login shell.

```bash
# Log out of the current shell session
logout
```

### 98. `reboot`
Reboot the system.

```bash
# Reboot the system
sudo reboot
```

### 99. `shutdown`
Shutdown or restart the system.

```bash
# Shutdown the system immediately
sudo shutdown -h now

# Restart the system in 5 minutes
sudo shutdown -r +5
```

### 100. `halt`
Halt the system.

```bash
# Halt the system
sudo halt
```
