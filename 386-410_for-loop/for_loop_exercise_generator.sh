#!/bin/bash

# For Loop Exercise Files Generator
# Creates comprehensive test environment for bash for loop learning tasks

echo "Creating for loop exercise environment..."

# Create main directory for exercises
mkdir -p for_loop_exercises
cd for_loop_exercises

# Clean up any existing structure
rm -rf * 2>/dev/null

echo "Setting up directory structure..."

# 1. Create basic directory structure
mkdir -p {documents,images,videos,archives,scripts,logs,config,data,temp}
mkdir -p documents/{txt,pdf,doc}
mkdir -p images/{png,jpg,gif}
mkdir -p videos/{mp4,avi,mov}
mkdir -p scripts/{bash,python,js}
mkdir -p data/{csv,json,xml}
mkdir -p logs/{app,system,error}
mkdir -p config/{dev,prod,test}

# 2. Create text files with different content
echo "Creating text files..."

# Documents - text files
cat > documents/txt/readme.txt << 'EOF'
This is the main readme file.
It contains important information about the project.
Please read carefully before proceeding.
Total lines: 4
EOF

cat > documents/txt/notes.txt << 'EOF'
Meeting notes from January 15th:
- Discussed project timeline
- Reviewed budget allocation
- Assigned team responsibilities
- Set next meeting date
- Approved new features
Total lines: 6
EOF

cat > documents/txt/changelog.txt << 'EOF'
Version 1.0.0 - Initial release
Version 1.0.1 - Bug fixes
Version 1.1.0 - New features added
Version 1.1.1 - Performance improvements
Version 2.0.0 - Major update
Version 2.0.1 - Security patches
Version 2.1.0 - UI improvements
Total lines: 8
EOF

cat > documents/txt/todo.txt << 'EOF'
TODO List:
1. Update documentation
2. Fix login bug
3. Add user authentication
4. Optimize database queries
5. Write unit tests
6. Deploy to staging
7. Review security measures
8. Update dependencies
9. Create backup scripts
10. Schedule maintenance
Total lines: 11
EOF

cat > documents/txt/contacts.txt << 'EOF'
John Doe - john@company.com - (555) 123-4567
Jane Smith - jane@company.com - (555) 234-5678
Bob Johnson - bob@company.com - (555) 345-6789
Alice Brown - alice@company.com - (555) 456-7890
Charlie Davis - charlie@company.com - (555) 567-8901
Total lines: 6
EOF

# Create files with different sizes
echo "Creating files with various sizes..."

# Small files (< 1KB)
echo "Small file content" > documents/small_file.txt
echo "Another small file" > documents/small_file2.txt

# Medium files (1-10KB)
for i in {1..100}; do
    echo "Line $i: This is a medium sized file with repeated content for testing purposes." >> documents/medium_file.txt
done

for i in {1..150}; do
    echo "Entry $i: Medium file number two with different content pattern." >> documents/medium_file2.txt
done

# Large files (>10KB)
for i in {1..500}; do
    echo "Row $i: This is a large file created for testing file processing operations with bash for loops." >> documents/large_file.txt
done

# 3. Create various file types with different extensions
echo "Creating files with different extensions..."

# Image placeholders
touch images/png/{photo1.png,photo2.png,screenshot.png,diagram.png}
touch images/jpg/{vacation.jpg,family.jpg,landscape.jpg,portrait.jpg,sunset.jpg}
touch images/gif/{animation.gif,logo.gif,banner.gif}

# Video placeholders
touch videos/mp4/{tutorial.mp4,presentation.mp4,demo.mp4}
touch videos/avi/{old_video.avi,backup.avi}
touch videos/mov/{mobile_video.mov,edited.mov}

# Archive files
touch archives/{backup_2024.tar.gz,photos.zip,documents.7z,old_files.rar}

# Script files
cat > scripts/bash/backup.sh << 'EOF'
#!/bin/bash
echo "Backup script"
tar -czf backup.tar.gz /important/data/
EOF

cat > scripts/bash/deploy.sh << 'EOF'
#!/bin/bash
echo "Deploy script"
echo "Deploying to production..."
EOF

cat > scripts/bash/monitor.sh << 'EOF'
#!/bin/bash
echo "Monitor script"
while true; do echo "Checking..."; sleep 60; done
EOF

cat > scripts/python/process_data.py << 'EOF'
#!/usr/bin/env python3
print("Data processing script")
import pandas as pd
# Process data here
EOF

cat > scripts/python/analyze.py << 'EOF'
#!/usr/bin/env python3
print("Analysis script")
import numpy as np
# Analyze data here
EOF

cat > scripts/js/build.js << 'EOF'
#!/usr/bin/env node
console.log("Build script");
// Build process here
EOF

# Make scripts executable
chmod +x scripts/bash/*.sh
chmod +x scripts/python/*.py
chmod +x scripts/js/*.js

# 4. Create data files
echo "Creating data files..."

# CSV files
cat > data/csv/employees.csv << 'EOF'
id,name,department,salary,hire_date
1,John Doe,Engineering,75000,2020-01-15
2,Jane Smith,Marketing,65000,2020-03-20
3,Bob Johnson,Sales,55000,2021-02-10
4,Alice Brown,Engineering,80000,2019-12-05
5,Charlie Davis,HR,60000,2021-05-15
6,Diana Wilson,Finance,70000,2020-08-30
7,Frank Miller,Engineering,85000,2019-06-12
8,Grace Taylor,Marketing,62000,2021-01-25
EOF

cat > data/csv/sales.csv << 'EOF'
date,product,quantity,price,total
2024-01-01,Widget A,10,25.99,259.90
2024-01-02,Widget B,5,45.50,227.50
2024-01-03,Widget C,8,15.75,126.00
2024-01-04,Widget A,12,25.99,311.88
2024-01-05,Widget D,3,89.99,269.97
2024-01-06,Widget B,7,45.50,318.50
2024-01-07,Widget C,15,15.75,236.25
EOF

# JSON files
cat > data/json/config.json << 'EOF'
{
  "database": {
    "host": "localhost",
    "port": 5432,
    "name": "myapp"
  },
  "cache": {
    "enabled": true,
    "ttl": 3600
  },
  "features": {
    "auth": true,
    "analytics": false
  }
}
EOF

cat > data/json/users.json << 'EOF'
{
  "users": [
    {"id": 1, "name": "John", "active": true},
    {"id": 2, "name": "Jane", "active": false},
    {"id": 3, "name": "Bob", "active": true}
  ]
}
EOF

# 5. Create log files
echo "Creating log files..."

cat > logs/app/application.log << 'EOF'
2024-01-15 10:00:00 INFO Application started
2024-01-15 10:01:00 INFO User logged in: john@example.com
2024-01-15 10:02:00 ERROR Database connection failed
2024-01-15 10:02:30 INFO Database reconnected
2024-01-15 10:05:00 WARN High memory usage detected
2024-01-15 10:10:00 INFO Backup completed successfully
2024-01-15 10:15:00 ERROR Failed to send email notification
2024-01-15 10:20:00 INFO User logged out: john@example.com
EOF

cat > logs/system/system.log << 'EOF'
2024-01-15 09:00:00 INFO System boot completed
2024-01-15 09:05:00 INFO Network interface up
2024-01-15 09:10:00 WARN Disk usage above 80%
2024-01-15 09:15:00 INFO Cron job executed
2024-01-15 09:20:00 ERROR Service failed to start
2024-01-15 09:25:00 INFO Service restarted successfully
EOF

cat > logs/error/error.log << 'EOF'
2024-01-15 10:02:00 ERROR Database connection timeout
2024-01-15 10:15:00 ERROR SMTP server unavailable
2024-01-15 10:30:00 ERROR Invalid user credentials
2024-01-15 10:45:00 ERROR File not found: /missing/file.txt
2024-01-15 11:00:00 ERROR Permission denied: /protected/data
EOF

# 6. Create configuration files
echo "Creating configuration files..."

cat > config/dev/app.conf << 'EOF'
debug=true
log_level=DEBUG
database_url=localhost:5432
cache_enabled=false
EOF

cat > config/prod/app.conf << 'EOF'
debug=false
log_level=INFO
database_url=prod-db:5432
cache_enabled=true
EOF

cat > config/test/app.conf << 'EOF'
debug=true
log_level=WARN
database_url=test-db:5432
cache_enabled=false
EOF

# 7. Create files with different ownership and permissions
echo "Creating files with different permissions..."

# Create files with different permissions
touch temp/public_file.txt
touch temp/private_file.txt
touch temp/executable_file.sh
touch temp/readonly_file.txt

chmod 644 temp/public_file.txt
chmod 600 temp/private_file.txt
chmod 755 temp/executable_file.sh
chmod 444 temp/readonly_file.txt

# 8. Create numbered files for sequential processing
echo "Creating numbered files..."

mkdir -p numbered_files
for i in {1..20}; do
    echo "File number $i content" > numbered_files/file_$i.txt
done

for i in {1..10}; do
    echo "Report $i data" > numbered_files/report_$i.txt
done

# 9. Create files with timestamps
echo "Creating timestamped files..."

mkdir -p timestamped
for i in {1..7}; do
    touch timestamped/log_2024-01-$(printf "%02d" $i).txt
done

# 10. Create backup directories
echo "Creating backup structure..."

mkdir -p backups/{daily,weekly,monthly}
touch backups/daily/{backup_mon.tar,backup_tue.tar,backup_wed.tar}
touch backups/weekly/{week1.tar.gz,week2.tar.gz}
touch backups/monthly/{jan2024.tar.gz,feb2024.tar.gz}

# 11. Create symlinks for testing
echo "Creating symbolic links..."

ln -s documents/txt/readme.txt current_readme
ln -s config/dev/ current_config
ln -s scripts/bash/backup.sh quick_backup

# 12. Create empty directories
mkdir -p empty_dirs/{dir1,dir2,dir3}

# 13. Create mixed content directory
mkdir -p mixed_content
echo "Text content" > mixed_content/file1.txt
echo "More text" > mixed_content/file2.txt
touch mixed_content/image.jpg
touch mixed_content/video.mp4
touch mixed_content/archive.zip

echo ""
echo "For loop exercise environment created successfully!"
echo ""
echo "Directory structure:"
tree . 2>/dev/null || find . -type d | head -20
echo ""
echo "File statistics:"
echo "Total files: $(find . -type f | wc -l)"
echo "Text files: $(find . -name '*.txt' | wc -l)"
echo "Script files: $(find . -name '*.sh' -o -name '*.py' -o -name '*.js' | wc -l)"
echo "Data files: $(find . -name '*.csv' -o -name '*.json' | wc -l)"
echo "Log files: $(find . -name '*.log' | wc -l)"
echo ""
echo "Sample file sizes:"
echo "Small files (< 1KB):"
find . -name 'small_file*.txt' -exec ls -lh {} \; | awk '{print $5, $9}'
echo ""
echo "Medium files (1-10KB):"
find . -name 'medium_file*.txt' -exec ls -lh {} \; | awk '{print $5, $9}'
echo ""
echo "Large files (> 10KB):"
find . -name 'large_file*.txt' -exec ls -lh {} \; | awk '{print $5, $9}'
echo ""
echo "Ready for bash for loop exercises!"
echo ""
echo "Key directories:"
echo "- documents/txt/    : Text files for reading operations"
echo "- scripts/          : Executable files for permission changes"
echo "- data/            : CSV and JSON files for processing"
echo "- logs/            : Log files for analysis"
echo "- numbered_files/   : Sequential files for iteration"
echo "- config/          : Configuration files"
echo "- mixed_content/   : Files with different extensions"