# My backup utility
#!/bin/bash
backup_dir="/data/backup/$(date "+%Y")/$(date "+%m")"
log_dir="/data/backup/log"
date_suffix=$(date "+%Y%m%d%H%M%S")

archive_name="$1"
sources="$2"

archive_path="$backup_dir/$archive_name-$date_suffix.tar.xz"
log_path="$log_dir/$archive_name-$date_suffix.log"

[ -d $backup_dir ] || mkdir -p $backup_dir
[ -d $log_dir ] || mkdir -p $log_dir
#echo "packing to $archive_path"
tar -cvJf $archive_path $sources > $log_path 2>&1
#echo "pack done $archive_path"
#echo "log written to $log_path"

