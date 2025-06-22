# Prompt for Creating Linux Command Tasks Database

## Purpose
Create a comprehensive JSON database for Linux command-line tasks that can be used for random task generation, learning, and practice.

## JSON Structure
Each task should be a JSON object with the following fields:

```json
{
  "id": 251,
  "command": ["find", "grep"],
  "difficulty": 3,
  "rating": 4,
  "category": "file management",
  "tags": ["python", "syntax", "errors"],
  "task": "Find all .py files and check which ones have syntax errors",
  "solution": "find . -name \"*.py\" -exec python -m py_compile {} \\; -print 2>&1 | grep -B1 \"SyntaxError\"",
  "explanation": "find . -name \"*.py\" (locate Python files) -exec python -m py_compile {} \\; (compile each file to check syntax) -print (show filename) 2>&1 (redirect stderr to stdout) | grep -B1 \"SyntaxError\" (show syntax errors with preceding filename)",
  "execution_time": "< 1 min",
  "requirements": ["python"],
  "warnings": null,
  "use_case": "Useful before committing code to repository"
}
```

## Field Definitions

- **id**: Unique integer identifier (sequential, starting from 251)
- **command**: Array of commands used (e.g., ["find"], ["grep", "awk"], ["sed", "find"])
- **difficulty**: Difficulty level from 1-5 (1=beginner, 5=expert)
- **rating**: Interest/uniqueness rating from 1-5 stars (how cool/unique the task is)
- **category**: Category string (e.g., "file management", "text processing", "security", "monitoring", "data analysis")
- **tags**: Array of relevant tags (technologies, file types, concepts)
- **task**: Task description in English
- **solution**: Solution with command(s) in English
- **explanation**: Detailed explanation of the solution including parameter descriptions
- **execution_time**: Expected execution time ("< 1 min", "1-5 min", "5+ min", "long-running")
- **requirements**: Array of required tools/packages (null if none)
- **warnings**: Warning message if task is potentially destructive (null if safe)
- **use_case**: Real-world use case scenario

## Task Categories
- **file management**: Finding, organizing, moving files
- **text processing**: Parsing, filtering, transforming text
- **security**: Permissions, vulnerabilities, monitoring
- **monitoring**: System monitoring, log analysis
- **data analysis**: Processing data files, statistics
- **development**: Code-related tasks, debugging
- **system admin**: Configuration, maintenance
- **backup**: Archiving, compression, backup tasks
- **medical imaging**: DICOM processing, medical data workflows
- **network**: Network analysis, packet inspection, connectivity
- **web**: API interactions, web scraping, downloads
- **multimedia**: Audio, video, image processing
- **automation**: Scheduled tasks, parallel processing
- **version control**: Git operations, repository management

## Commands to Include
Focus on these essential Linux commands organized by priority:

### Core Text Processing Commands:
- **find**: File searching and operations
- **ls**: File listing and directory inspection
- **cat**: File content display and concatenation
- **head**: Display first lines of files
- **tail**: Display last lines and real-time monitoring
- **touch**: File creation and timestamp manipulation
- **grep**: Text pattern matching
- **awk**: Text processing and data extraction
- **sed**: Stream editing and text manipulation
- **xargs**: Command execution with piped input
- **sort**: Sorting data
- **uniq**: Removing duplicates
- **cut**: Extracting columns
- **tr**: Character translation
- **wc**: Word/line/character counting

### Data Processing and Analysis:
- **jq**: Advanced JSON processing, transformation, and analysis
- **CSV processing**: Data validation, transformation, and analysis with awk
- **Data conversion**: JSON ↔ CSV conversion and format transformation
- **Data validation**: Schema validation and data quality checks
- **Statistical analysis**: Aggregations, calculations, and reporting

### High Priority Commands (Very Common):
- **rsync**: File synchronization and backup
- **tar**: Archive creation and extraction
- **curl/wget**: Web requests and downloads ✅ (COMPLETED - 20 tasks, IDs 251-270)
- **ssh/scp**: Remote operations and file transfer
- **cron/crontab**: Task scheduling

### Medium Priority Commands (Useful):
- **jq**: JSON processing (very popular for APIs)
- **xmlstarlet**: XML processing
- **parallel**: Parallel command execution
- **watch**: Real-time monitoring
- **diff/comm**: File comparison

### File Operations and System Info:
- **ln**: Creating symbolic and hard links
- **file**: File type identification
- **stat**: Detailed file information
- **readlink**: Symbolic link resolution
- **which/whereis**: Command location

### Permissions and User Management:
- **chmod**: Change file permissions
- **chown**: Change file ownership
- **useradd/groupadd**: User and group creation
- **id**: User identity information
- **groups**: Group membership

### Process Management:
- **ps**: Process listing
- **top/htop**: Real-time process monitoring
- **jobs**: Job control
- **kill/killall**: Process termination
- **nohup**: Background process management
- **screen/tmux**: Terminal multiplexers

### System Monitoring and Disk Management:
- **df**: Disk space usage
- **du**: Directory size analysis
- **free**: Memory usage
- **uptime**: System uptime and load
- **iostat**: I/O statistics
- **lsof**: Open files and processes

### Storage and Partitions:
- **fdisk**: Partition information
- **lsblk**: Block device listing
- **parted**: Advanced partition management
- **blkid**: Filesystem identification
- **mount/umount**: Filesystem mounting

### Data Integrity and Compression:
- **md5sum/sha256sum**: Checksum verification
- **zip/unzip**: ZIP archive management
- **gzip/gunzip**: File compression
- **tar**: Archive creation with compression

### Specialized Commands (Domain-specific):
- **ffmpeg**: Video/audio processing
- **imagemagick**: Image manipulation
- **git**: Version control operations
- **netstat/ss**: Network analysis

### Advanced/Creative Commands:
- **nmap**: Network scanning
- **tcpdump/wireshark**: Network packet analysis
- **bc**: Command-line calculator
- **date**: Advanced date/time manipulation
- **printf**: Formatted output
- **at**: One-time task scheduling

### Medical Imaging Commands:
- **dcmtk tools**: DICOM file processing (dcmdump, dcmconv, dcmodify, etc.)
- **dcm2niix**: DICOM to NIfTI conversion
- **medical imaging workflows**: Patient data handling, anonymization

## Completed Commands

### curl (IDs 251-270) ✅
- 20 comprehensive tasks covering:
  - Basic HTTP operations (GET, POST, HEAD)
  - Authentication (Bearer tokens, Basic auth)
  - File operations (downloads, uploads, resume)
  - Advanced features (cookies, redirects, proxies)
  - API interactions (JSON processing, pagination)
  - Performance monitoring and SSL verification
  - Automation and scripting workflows

## Task Difficulty Guidelines
- **Level 1**: Basic single command usage
- **Level 2**: Command with common options
- **Level 3**: Piping 2-3 commands together
- **Level 4**: Complex logic, multiple pipes, scripting elements
- **Level 5**: Advanced combinations, performance considerations

## Rating Guidelines
- **1 star**: Standard, common task
- **2 stars**: Useful with some cleverness
- **3 stars**: Creative solution or interesting approach
- **4 stars**: Impressive technique, non-obvious solution
- **5 stars**: Extraordinary, highly creative, or mind-blowing approach

## Quality Standards
- All commands should be practical and real-world applicable
- Solutions should be efficient and follow best practices
- Include safety warnings for potentially destructive operations
- Provide alternative approaches when relevant
- Test commands before including them

## ID Management
- Current range: 251-270 (curl tasks completed)
- Next available ID: 271
- Continue sequential numbering for new command sets