# Linux Log Backup & Secure Sync Automation

## 📌 Project Overview
This project implements an automated Linux system log backup and secure synchronization solution using **Bash scripting**, **cron**, **SSH**, and **rsync**.

System logs are archived with timestamps, compressed into `.tar.gz` files, and securely synchronized to a simulated remote server.  
The automation follows real-world DevOps practices by running scheduled jobs during low-traffic hours and maintaining execution logs for verification and debugging.

Localhost is used to simulate a remote server environment.

---

## 🎯 Key Features
- Automated backup of Linux system logs
- Timestamped and compressed archives (`.tar.gz`)
- Secure synchronization using SSH key-based authentication
- Efficient file transfer using rsync
- Cron-based scheduling for full automation
- Centralized execution logging
- Realistic handling of Linux permission constraints

---

## ⏰ Automation Schedule
The automation is handled using `cron` with the following schedule:

- **Backup job:** Runs daily at **2:00 AM**
- **Sync job:** Runs daily at **2:05 AM**

- **Cron Job script 1:**  0 2 * * * /home/debolina/linux_project/scripts/backup_logs.sh
- **Cron Job script 2:**  5 2 * * * /home/debolina/linux_project/scripts/sync_backup.sh

## 🛠️ Technologies Used

Linux (Ubuntu 22.04 LTS)

Bash Scripting

Cron

SSH

rsync

## 📂 Project Structure

linux_project/
├── scripts/
│   ├── backup_logs.sh
│   └── sync_backup.sh
├── logs/
│   └── cron.log
├── log_backup/
│   └── logs_YYYYMMDD_HHMMSS.tar.gz
├── remote_backups/
│   └── logs_YYYYMMDD_HHMMSS.tar.gz
├── .gitignore
└── README.md


Note: logs/, log_backup/, and remote_backups/ are ignored in Git using .gitignore as they contain generated files.

## ⚙️ Script Details

backup_logs.sh

- Archives /var/log

- Creates timestamped compressed backups

- Handles restricted files gracefully

- Logs execution details to cron.log

sync_backup.sh

- Synchronizes backups securely using rsync over SSH

- Uses passwordless SSH authentication

- Transfers only changed files for efficiency

- Logs synchronization status

## 🔍 Verification & Monitoring

Automation success can be verified by checking:

ls ~/linux_project/log_backup
ls ~/linux_project/remote_backups
cat ~/linux_project/logs/cron.log


The presence of new timestamped archives and log entries confirms correct execution.
