# My backup utility
#!/bin/bash
backup_dir="$1"
archive_name="$2"
sources="$3"

current_backup_dir="$backup_dir/$(date "+%Y")/$(date "+%m")"
log_dir="$backup_dir/log"
date_suffix=$(date "+%Y%m%d%H%M%S")

archive_path="$current_backup_dir/$archive_name-$date_suffix.tar.xz"
log_path="$log_dir/$archive_name-$date_suffix.log"
[ -d $current_backup_dir ] || mkdir -p $current_backup_dir
[ -d $log_dir ] || mkdir -p $log_dir
tar cvJfh $archive_path $sources > $log_path 2>&1

