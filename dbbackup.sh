#!/bin/bash
# List databases and let user select one
echo "Available PostgreSQL databases:"
psql -U postgres -Atc "SELECT datname FROM pg_database WHERE datistemplate = false;" 

echo -n "Enter the database name to backup: "
read db_name

# Check if database exists
db_exists=$(psql -U postgres -tAc "SELECT 1 FROM pg_database WHERE datname='$db_name'")
if [ "$db_exists" != "1" ]; then
    echo "Database '$db_name' does not exist."
    exit 1
fi

# Backup function
db_backup() {
    backup_file="${db_name}_$(date +%Y%m%d_%H%M%S).sql"
    pg_dump -U postgres "$db_name" > "$backup_file"
    if [ $? -eq 0 ]; then
        echo "Backup successful: $backup_file"
    else
        echo "Backup failed."
        exit 1
    fi
}       

db_backup