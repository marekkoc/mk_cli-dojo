#!/bin/bash
# Script to create all missing sample files for Linux tasks
# Updated to include files for new jq, systemd, docker, and DICOM tasks

# Create sample_data directory
mkdir -p sample_data
cd sample_data

echo "Creating sample files for Linux command tasks..."

# ============================================================================
# CSV FILES
# ============================================================================

# Basic data.csv for various tasks (ID 14, 15, 22, 180, 181, 182, 185)
cat > data.csv << 'EOF'
id,name,salary,department,status
1,John Smith,50000,Engineering,active
2,Jane Doe,60000,Marketing,active
3,Bob Johnson,45000,Engineering,inactive
4,Alice Brown,70000,Sales,active
5,Charlie Wilson,55000,Marketing,active
6,David Lee,80000,Engineering,active
7,Emma Davis,65000,Sales,active
8,Frank Miller,52000,Marketing,inactive
9,Grace Taylor,75000,Engineering,active
10,Henry Garcia,48000,Sales,active
EOF

# customers.csv for task ID 178
cat > customers.csv << 'EOF'
customer_id,company_name,order_total,status,region
001,Acme Corp,1500,active,North
002,Beta Industries,800,active,South
003,Gamma Solutions,2000,active,East
004,Delta Systems,450,inactive,West
005,Alpha Technologies,1200,active,North
006,Omega Services,300,active,South
007,Sigma Products,1800,active,East
008,Theta Consulting,950,active,West
009,Lambda Enterprises,2500,active,North
010,Kappa Industries,600,inactive,South
EOF

# sales.csv for tasks ID 179, 184
cat > sales.csv << 'EOF'
date,salesperson,region,amount,product
2024-01-15,John,North,1500,Software
2024-01-16,Jane,South,2000,Hardware
2024-01-17,Bob,East,1200,Software
2024-01-18,Alice,West,1800,Services
2024-01-19,Charlie,North,950,Hardware
2024-01-20,David,South,2200,Software
2024-01-21,Emma,East,1100,Services
2024-01-22,Frank,West,1650,Hardware
2024-01-23,Grace,North,1350,Software
2024-01-24,Henry,South,1750,Services
EOF

# lookup.csv for task ID 183 (join operation)
cat > lookup.csv << 'EOF'
id,description
1,Senior Developer
2,Marketing Manager
3,Junior Developer
4,Sales Director
5,Marketing Specialist
6,Lead Engineer
7,Account Manager
8,Marketing Coordinator
9,Software Architect
10,Sales Representative
EOF

# timeseries.csv for task ID 190
cat > timeseries.csv << 'EOF'
date,value
2024-01-01,100
2024-01-02,105
2024-01-03,98
2024-01-04,110
2024-01-05,115
2024-01-06,108
2024-01-07,120
2024-01-08,118
2024-01-09,125
2024-01-10,122
2024-01-11,130
2024-01-12,128
EOF

# ============================================================================
# JSON FILES (Enhanced for jq tasks 271-290)
# ============================================================================

# data.json for task ID 41 (extract emails) and jq tasks
cat > data.json << 'EOF'
{
  "users": [
    {
      "id": 1,
      "name": "John Smith",
      "email": "john.smith@example.com",
      "department": "Engineering"
    },
    {
      "id": 2,
      "name": "Jane Doe",
      "email": "jane.doe@example.com",
      "department": "Marketing"
    },
    {
      "id": 3,
      "name": "Bob Johnson",
      "email": "bob.johnson@example.com",
      "department": "Engineering"
    },
    {
      "id": 4,
      "name": "Alice Brown",
      "email": "alice.brown@example.com",
      "department": "Sales"
    },
    {
      "id": 5,
      "name": "Charlie Wilson",
      "email": "charlie.wilson@example.com",
      "department": "Marketing"
    }
  ]
}
EOF

# catalog.json for task ID 42 (filter products by price)
cat > catalog.json << 'EOF'
{
  "products": [
    {
      "id": 1,
      "name": "Laptop",
      "price": 1200,
      "category": "Electronics"
    },
    {
      "id": 2,
      "name": "Mouse",
      "price": 25,
      "category": "Electronics"
    },
    {
      "id": 3,
      "name": "Keyboard",
      "price": 80,
      "category": "Electronics"
    },
    {
      "id": 4,
      "name": "Monitor",
      "price": 300,
      "category": "Electronics"
    },
    {
      "id": 5,
      "name": "Desk Chair",
      "price": 150,
      "category": "Furniture"
    }
  ]
}
EOF

# products.json for task ID 43 (group by category)
cat > products.json << 'EOF'
[
  {
    "id": 1,
    "name": "Laptop",
    "price": 1200,
    "category": "Electronics"
  },
  {
    "id": 2,
    "name": "Smartphone",
    "price": 800,
    "category": "Electronics"
  },
  {
    "id": 3,
    "name": "Desk",
    "price": 300,
    "category": "Furniture"
  },
  {
    "id": 4,
    "name": "Chair",
    "price": 150,
    "category": "Furniture"
  },
  {
    "id": 5,
    "name": "Tablet",
    "price": 500,
    "category": "Electronics"
  }
]
EOF

# orders.json for task ID 44 (flatten nested structure)
cat > orders.json << 'EOF'
{
  "orders": [
    {
      "id": "ORD-001",
      "customer": {
        "name": "John Smith",
        "email": "john@example.com"
      },
      "billing": {
        "total": 1500.00,
        "currency": "USD"
      },
      "items": [
        {"name": "Laptop", "price": 1200},
        {"name": "Mouse", "price": 25}
      ]
    },
    {
      "id": "ORD-002",
      "customer": {
        "name": "Jane Doe",
        "email": "jane@example.com"
      },
      "billing": {
        "total": 800.00,
        "currency": "USD"
      },
      "items": [
        {"name": "Smartphone", "price": 800}
      ]
    }
  ]
}
EOF

# employees.json for complex jq tasks (task ID 282 and others)
cat > employees.json << 'EOF'
[
  {
    "firstName": "John",
    "lastName": "Smith",
    "salary": 75000,
    "department": "Engineering"
  },
  {
    "firstName": "Jane",
    "lastName": "Doe",
    "salary": 65000,
    "department": "Marketing"
  },
  {
    "firstName": "Bob",
    "lastName": "Johnson",
    "salary": 80000,
    "department": "Engineering"
  },
  {
    "firstName": "Alice",
    "lastName": "Brown",
    "salary": 70000,
    "department": "Sales"
  },
  {
    "firstName": "Charlie",
    "lastName": "Wilson",
    "salary": 55000,
    "department": "Marketing"
  }
]
EOF

# customers.json for task ID 189 (business logic)
cat > customers.json << 'EOF'
{
  "customers": [
    {
      "id": 1,
      "name": "Premium Corp",
      "orderTotal": 1500,
      "status": "active"
    },
    {
      "id": 2,
      "name": "Gold Industries",
      "orderTotal": 750,
      "status": "active"
    },
    {
      "id": 3,
      "name": "Standard LLC",
      "orderTotal": 200,
      "status": "active"
    }
  ]
}
EOF

# ============================================================================
# LOG FILES
# ============================================================================

# access.log for web server log analysis tasks
cat > access.log << 'EOF'
192.168.1.100 - - [15/Jan/2024:10:30:45 +0000] "GET /index.html HTTP/1.1" 200 2048 "Mozilla/5.0"
10.0.0.50 - - [15/Jan/2024:10:31:12 +0000] "POST /api/login HTTP/1.1" 401 512 "curl/7.68.0"
192.168.1.100 - - [15/Jan/2024:10:31:45 +0000] "GET /dashboard HTTP/1.1" 200 4096 "Mozilla/5.0"
203.0.113.25 - - [15/Jan/2024:10:32:30 +0000] "GET /admin HTTP/1.1" 403 256 "BadBot/1.0"
192.168.1.100 - - [15/Jan/2024:10:33:15 +0000] "POST /api/data HTTP/1.1" 500 1024 "Mozilla/5.0"
10.0.0.75 - - [15/Jan/2024:10:34:00 +0000] "GET /images/logo.png HTTP/1.1" 200 8192 "Mozilla/5.0"
198.51.100.44 - - [15/Jan/2024:10:34:45 +0000] "GET /search?q=<script>alert('xss')</script> HTTP/1.1" 400 512 "AttackBot/2.0"
192.168.1.100 - - [15/Jan/2024:10:35:30 +0000] "GET /profile HTTP/1.1" 200 3072 "Mozilla/5.0"
EOF

# error.log for error analysis
cat > error.log << 'EOF'
2024-01-15 10:30:00 [INFO] Application started successfully
2024-01-15 10:31:15 [ERROR] Database connection failed: timeout
2024-01-15 10:32:30 [WARN] High memory usage detected: 85%
2024-01-15 10:33:45 [ERROR] User authentication failed for user 'admin'
2024-01-15 10:34:00 [INFO] Cache cleared successfully
2024-01-15 10:35:15 [CRITICAL] System overload detected
2024-01-15 10:36:30 [ERROR] Failed to process payment for order #12345
2024-01-15 10:37:45 [INFO] Backup completed successfully
EOF

# application.log for real-time monitoring
cat > application.log << 'EOF'
2024-01-15 10:30:00 [INFO] Server startup complete
2024-01-15 10:30:15 [DEBUG] Loading configuration from /etc/app/config.json
2024-01-15 10:30:30 [INFO] Database connection established
2024-01-15 10:31:00 [ERROR] Failed to validate user input: invalid email format
2024-01-15 10:31:30 [WARN] Rate limit exceeded for IP 192.168.1.100
2024-01-15 10:32:00 [INFO] Processing batch job #447
2024-01-15 10:32:30 [ERROR] Payment gateway timeout
2024-01-15 10:33:00 [FATAL] Critical system error: out of memory
EOF

# app.log for filtered monitoring
cat > app.log << 'EOF'
2024-01-15 10:30:00 INFO Starting application
2024-01-15 10:30:15 DEBUG Loading modules
2024-01-15 10:30:30 INFO Ready to accept connections
2024-01-15 10:31:00 ERROR Database query failed
2024-01-15 10:31:30 WARN Connection pool nearly exhausted
2024-01-15 10:32:00 INFO User login successful
2024-01-15 10:32:30 ERROR Authentication service unreachable
2024-01-15 10:33:00 INFO Processing completed
EOF

# debug.log for multi-log monitoring
cat > debug.log << 'EOF'
2024-01-15 10:30:00 DEBUG SQL: SELECT * FROM users WHERE active=1
2024-01-15 10:30:15 DEBUG Cache hit for key: user_sessions
2024-01-15 10:30:30 DEBUG SQL: UPDATE orders SET status='completed' WHERE id=123
2024-01-15 10:31:00 DEBUG Performance: Query executed in 0.05ms
2024-01-15 10:31:30 DEBUG SQL: INSERT INTO audit_log VALUES (...)
2024-01-15 10:32:00 DEBUG Memory usage: 512MB
EOF

# response_time.log for performance analysis
cat > response_time.log << 'EOF'
/api/users 45
/api/products 23
/api/orders 156
/dashboard 89
/login 34
/api/reports 234
/search 67
/profile 12
/api/analytics 445
/settings 78
EOF

# ============================================================================
# CONFIGURATION FILES
# ============================================================================

# config.old for diff comparison
cat > config.old << 'EOF'
server.host=localhost
server.port=8080
database.url=jdbc:mysql://localhost:3306/olddb
database.user=admin
logging.level=INFO
cache.enabled=false
EOF

# config.new for diff comparison
cat > config.new << 'EOF'
server.host=0.0.0.0
server.port=8080
database.url=jdbc:mysql://localhost:3306/newdb
database.user=appuser
database.pool.size=10
logging.level=DEBUG
cache.enabled=true
cache.ttl=3600
EOF

# ============================================================================
# CURL FORMAT FILE
# ============================================================================

# curl-format.txt for timing measurements
cat > curl-format.txt << 'EOF'
     time_namelookup:  %{time_namelookup}\n
        time_connect:  %{time_connect}\n
     time_appconnect:  %{time_appconnect}\n
    time_pretransfer:  %{time_pretransfer}\n
       time_redirect:  %{time_redirect}\n
  time_starttransfer:  %{time_starttransfer}\n
                     ----------\n
          time_total:  %{time_total}\n
EOF

# ============================================================================
# DOCKER FILES (for task ID 325 and 330)
# ============================================================================

# Simple Dockerfile for task ID 325
cat > Dockerfile << 'EOF'
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
EOF

# docker-compose.yml will be created by task ID 330 itself

# ============================================================================
# SAMPLE DICOM FILES (Text-based metadata for DICOM tasks 331-350)
# ============================================================================

# Create a simple DICOM metadata file (actual DICOM files are binary)
cat > dicom_metadata_sample.txt << 'EOF'
# Sample DICOM metadata structure (for reference only)
# Real DICOM files would need dcmtk tools

(0008,0020) StudyDate: 20240115
(0008,0030) StudyTime: 103000
(0008,0060) Modality: CT
(0008,0070) Manufacturer: SIEMENS
(0008,1090) ManufacturerModelName: SOMATOM Definition
(0010,0010) PatientName: DOE^JOHN
(0010,0020) PatientID: 12345
(0010,0030) PatientBirthDate: 19800101
(0018,0015) BodyPartExamined: CHEST
(0018,0050) SliceThickness: 5.0
(0018,0060) KVP: 120
(0020,000d) StudyInstanceUID: 1.2.840.113619.2.55.3.604688119.971.1234567890.123
(0020,000e) SeriesInstanceUID: 1.2.840.113619.2.55.3.604688119.971.1234567890.456
(0028,0010) Rows: 512
(0028,0011) Columns: 512
(0028,0100) BitsAllocated: 16
(0028,0101) BitsStored: 12
(0028,0102) HighBit: 11
EOF

# Create a minimal sample DICOM file (text representation)
# Note: Real DICOM files are binary and require dcmtk tools
cat > sample.dcm << 'EOF'
# This is a text representation of DICOM metadata
# Real DICOM files are binary format
# Use dcmtk tools like dcmdump to read actual DICOM files
PATIENT_NAME=DOE^JOHN
PATIENT_ID=12345
STUDY_DATE=20240115
MODALITY=CT
MANUFACTURER=SIEMENS
EOF

# Create directory for received DICOM files (task ID 350)
mkdir -p received

# ============================================================================
# TEXT FILES FOR PROCESSING
# ============================================================================

# file.txt for general text processing
cat > file.txt << 'EOF'
This is line one of the sample file.
Here is the second line with some content.
The third line contains different information.
Line four has even more text to process.
This is the fifth line of our sample.

Line seven (after blank line six).
Final line eight completes our sample.
EOF

# input.txt for line-by-line processing
cat > input.txt << 'EOF'
apple
banana
cherry
date
elderberry
fig
grape
honeydew
kiwi
lemon
EOF

# Create users.csv for database import example
cat > users.csv << 'EOF'
id,name,email,status
1,John Smith,john@example.com,active
2,Jane Doe,jane@example.com,active
3,Bob Johnson,bob@example.com,inactive
4,Alice Brown,alice@example.com,active
EOF

# Create webhook_payload.json for webhook testing
cat > webhook_payload.json << 'EOF'
{
  "event": "user.created",
  "timestamp": "2024-01-15T10:30:00Z",
  "data": {
    "user_id": 12345,
    "username": "johndoe",
    "email": "john@example.com",
    "profile": {
      "first_name": "John",
      "last_name": "Doe",
      "age": 30
    }
  },
  "metadata": {
    "source": "api",
    "version": "1.0"
  }
}
EOF

# ============================================================================
# SYSTEMD SERVICE FILES (for systemd tasks demonstration)
# ============================================================================

# Sample systemd service file for reference
cat > sample-app.service << 'EOF'
[Unit]
Description=Sample Application Service
After=network.target

[Service]
Type=simple
User=www-data
WorkingDirectory=/opt/sample-app
ExecStart=/opt/sample-app/start.sh
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

cd ..
echo "✅ All sample files created successfully in sample_data/ directory!"
echo ""
echo "📁 Created files:"
echo "   CSV: data.csv, customers.csv, sales.csv, lookup.csv, timeseries.csv, users.csv"
echo "   JSON: data.json, catalog.json, products.json, orders.json, employees.json, customers.json, webhook_payload.json"
echo "   LOGS: access.log, error.log, application.log, app.log, debug.log, response_time.log"
echo "   CONFIG: config.old, config.new, curl-format.txt"
echo "   DOCKER: Dockerfile"
echo "   DICOM: sample.dcm, dicom_metadata_sample.txt, received/ directory"
echo "   SYSTEMD: sample-app.service"
echo "   TEXT: file.txt, input.txt"
echo ""
echo "🚀 You can now run all Linux command tasks including new jq, systemd, docker, and DICOM tasks!"