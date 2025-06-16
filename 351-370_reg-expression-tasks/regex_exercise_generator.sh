#!/bin/bash

# Regular Expression Exercise Files Generator
# Creates comprehensive test files for regex learning tasks

echo "Creating regular expression exercise files..."

# Create directory for exercise files
mkdir -p regex_sample_data
cd regex_sample_data

# 1. Sample log file with various formats
cat > server.log << 'EOF'
2024-01-15 10:30:45 [INFO] User john.doe@example.com logged in from 192.168.1.100
2024-01-15 10:31:02 [ERROR] Failed login attempt for admin@company.org from 10.0.0.50
2024-01-15 10:31:15 [WARN] High memory usage: 85% on server web-01
2024-01-15 10:32:01 [INFO] User jane_smith@domain.net logged in from 172.16.0.25
2024-01-15 10:32:30 [ERROR] Database connection failed: timeout after 30 seconds
2024-01-15 10:33:12 [INFO] User bob.wilson@test.co.uk logged out
2024-01-15 10:34:00 [WARN] Disk space low: 92% on /var/log partition
2024-01-15 10:35:15 [ERROR] 404 Not Found: /api/v1/users/12345
2024-01-15 10:36:00 [INFO] Backup completed successfully in 2.5 minutes
2024-01-15 10:37:22 [WARN] SSL certificate expires in 7 days
2024-01-15 10:38:01 [INFO] User alice.cooper@music.com logged in from 203.0.113.42
2024-01-15 10:39:15 [ERROR] Invalid API key: sk-abc123def456ghi789
2024-01-15 10:40:00 [INFO] System reboot scheduled for 2024-01-16 02:00:00
EOF

# 2. Contact information file
cat > contacts.txt << 'EOF'
John Doe - john.doe@example.com - +1-555-123-4567 - Manager
Jane Smith - jane_smith@domain.net - (555) 987-6543 - Developer  
Bob Wilson - bob.wilson@test.co.uk - +44-20-7123-4567 - Designer
Alice Cooper - alice.cooper@music.com - 555.456.7890 - Artist
Mike Johnson - mike@company.org - +1 (555) 234-5678 - Sales
Sarah Davis - s.davis@email.net - 555-777-8888 - HR
Tom Brown - tom.brown@firm.com - +1.555.999.0000 - Legal
Lisa Green - lisa_green@startup.io - (555) 111-2222 - CTO
David Miller - d.miller@corp.biz - +1-555-333-4444 - CFO
Emma White - emma@agency.co - 555/666/7777 - Marketing
EOF

# 3. Code file with various programming languages
cat > code_samples.txt << 'EOF'
# Python functions
def calculate_sum(a, b):
    return a + b

def validate_email(email):
    import re
    pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
    return re.match(pattern, email) is not None

# JavaScript functions
function getUserData(userId) {
    const apiUrl = `https://api.example.com/users/${userId}`;
    return fetch(apiUrl);
}

const validatePhone = (phone) => {
    const regex = /^\+?[1-9]\d{1,14}$/;
    return regex.test(phone);
};

// Java methods
public class UserValidator {
    private static final String EMAIL_PATTERN = 
        "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
    
    public boolean isValidEmail(String email) {
        return email.matches(EMAIL_PATTERN);
    }
}

/* C++ functions */
#include <regex>
bool validateIPAddress(const std::string& ip) {
    std::regex pattern("^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}$");
    return std::regex_match(ip, pattern);
}
EOF

# 4. Data file with various formats
cat > data_mixed.txt << 'EOF'
Product,Price,Date,Category
Laptop Pro 15,1299.99,2024-01-15,Electronics
Wireless Mouse,29.95,2024/01/16,Accessories
USB-C Cable,15.00,Jan 17 2024,Cables
Gaming Keyboard,89.99,2024-01-18,Gaming
Monitor 27",349.50,19/01/2024,Displays
Webcam HD,79.99,2024.01.20,Video
Speakers Set,199.00,21-Jan-2024,Audio
Power Bank,45.99,2024-01-22,Power
Tablet 10",299.99,23/1/2024,Tablets
Headphones,129.95,2024-01-24,Audio
Hard Drive 1TB,89.99,25.01.2024,Storage
SSD 512GB,119.99,2024/1/26,Storage
Router WiFi 6,159.99,27-Jan-2024,Network
Smart Watch,249.99,2024-01-28,Wearables
Bluetooth Speaker,69.99,29/01/2024,Audio
EOF

# 5. Mixed text file with various patterns
cat > mixed_patterns.txt << 'EOF'
Credit Card Numbers (masked): 4532-****-****-1234, 5555-****-****-4444
Social Security: XXX-XX-1234, XXX-XX-5678
Phone Numbers: +1-555-123-4567, (555) 987-6543, 555.456.7890
IP Addresses: 192.168.1.1, 10.0.0.255, 172.16.254.1
MAC Addresses: 00:1B:44:11:3A:B7, AA:BB:CC:DD:EE:FF
URLs: https://www.example.com, http://test.org/path?param=value
File Paths: /home/user/documents/file.txt, C:\Users\John\Desktop\report.pdf
Timestamps: 2024-01-15T10:30:45Z, 15/01/2024 10:30:45, Jan 15, 2024 10:30 AM
Version Numbers: v1.2.3, 2.0.1-beta, 3.14.159-alpha.2
License Plates: ABC-123, XYZ-789, 123-DEF
Hex Colors: #FF5733, #C70039, #900C3F, #581845
Binary Numbers: 101010, 11110000, 10101010
Hexadecimal: 0xFF, 0x1A2B, 0xDEADBEEF
UUIDs: 550e8400-e29b-41d4-a716-446655440000
API Keys: sk-1234567890abcdef, pk_test_abc123def456
Hash Values: 5d41402abc4b2a76b9719d911017c592, a1b2c3d4e5f6789
EOF

# 6. Web access log file
cat > access.log << 'EOF'
192.168.1.100 - - [15/Jan/2024:10:30:45 +0000] "GET /index.html HTTP/1.1" 200 1234
10.0.0.50 - - [15/Jan/2024:10:31:02 +0000] "POST /login HTTP/1.1" 401 567
172.16.0.25 - - [15/Jan/2024:10:32:01 +0000] "GET /dashboard HTTP/1.1" 200 2345
203.0.113.42 - - [15/Jan/2024:10:33:15 +0000] "GET /api/users/123 HTTP/1.1" 200 890
192.168.1.200 - - [15/Jan/2024:10:34:00 +0000] "POST /api/orders HTTP/1.1" 201 456
10.0.0.75 - - [15/Jan/2024:10:35:15 +0000] "GET /images/logo.png HTTP/1.1" 404 123
172.16.0.100 - - [15/Jan/2024:10:36:00 +0000] "PUT /api/users/456 HTTP/1.1" 200 678
203.0.113.100 - - [15/Jan/2024:10:37:22 +0000] "DELETE /api/posts/789 HTTP/1.1" 204 0
192.168.1.150 - - [15/Jan/2024:10:38:01 +0000] "GET /search?q=linux+regex HTTP/1.1" 200 3456
10.0.0.25 - - [15/Jan/2024:10:39:15 +0000] "GET /admin/users HTTP/1.1" 403 234
EOF

# 7. Configuration file
cat > config.ini << 'EOF'
[database]
host=localhost
port=5432
username=dbuser
password=secret123
database=production

[server]
host=0.0.0.0
port=8080
debug=false
max_connections=100

[logging]
level=INFO
file=/var/log/app.log
max_size=10MB
backup_count=5

[email]
smtp_server=smtp.gmail.com
smtp_port=587
username=app@company.com
password=email_password123
use_tls=true

[cache]
redis_host=127.0.0.1
redis_port=6379
redis_db=0
ttl=3600
EOF

# 8. CSV file with various data types
cat > employees.csv << 'EOF'
ID,Name,Email,Phone,Department,Salary,Join_Date,Status
001,John Doe,john.doe@company.com,+1-555-123-4567,Engineering,75000,2023-01-15,Active
002,Jane Smith,jane.smith@company.com,(555) 987-6543,Marketing,65000,2023-02-20,Active
003,Bob Wilson,bob.wilson@company.com,555.456.7890,Sales,70000,2023-03-10,Active
004,Alice Cooper,alice.cooper@company.com,+1 (555) 234-5678,HR,60000,2023-04-05,Inactive
005,Mike Johnson,mike.johnson@company.com,555-777-8888,Engineering,80000,2023-05-12,Active
006,Sarah Davis,sarah.davis@company.com,+1.555.999.0000,Finance,72000,2023-06-18,Active
007,Tom Brown,tom.brown@company.com,(555) 111-2222,Legal,85000,2023-07-22,Active
008,Lisa Green,lisa.green@company.com,555/666/7777,IT,78000,2023-08-30,Active
009,David Miller,david.miller@company.com,+1-555-333-4444,Operations,68000,2023-09-15,Inactive
010,Emma White,emma.white@company.com,555.444.3333,Design,66000,2023-10-01,Active
EOF

# 9. JSON file for processing
cat > sample.json << 'EOF'
{
  "users": [
    {
      "id": 1,
      "name": "John Doe",
      "email": "john.doe@example.com",
      "phone": "+1-555-123-4567",
      "address": {
        "street": "123 Main St",
        "city": "New York",
        "zipcode": "10001"
      },
      "created_at": "2024-01-15T10:30:45Z"
    },
    {
      "id": 2,
      "name": "Jane Smith",
      "email": "jane.smith@domain.net",
      "phone": "(555) 987-6543",
      "address": {
        "street": "456 Oak Ave",
        "city": "Los Angeles",
        "zipcode": "90210"
      },
      "created_at": "2024-01-16T14:22:30Z"
    }
  ],
  "metadata": {
    "total_count": 2,
    "api_version": "v1.2.3",
    "timestamp": "2024-01-15T10:30:45Z"
  }
}
EOF

# 10. HTML file for parsing
cat > sample.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Page</title>
</head>
<body>
    <div class="container">
        <h1>Contact Information</h1>
        <div class="contact-card">
            <h2>John Doe</h2>
            <p>Email: <a href="mailto:john.doe@example.com">john.doe@example.com</a></p>
            <p>Phone: <a href="tel:+1-555-123-4567">+1-555-123-4567</a></p>
        </div>
        <div class="contact-card">
            <h2>Jane Smith</h2>
            <p>Email: <a href="mailto:jane.smith@domain.net">jane.smith@domain.net</a></p>
            <p>Phone: <a href="tel:555-987-6543">(555) 987-6543</a></p>
        </div>
    </div>
    <script>
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        const phonePattern = /^\+?[\d\s\-\(\)\.]+$/;
    </script>
</body>
</html>
EOF

echo "Exercise files created successfully!"
echo "Files created in regex_exercises directory:"
ls -la

echo ""
echo "Exercise files summary:"
echo "- server.log: Log file with timestamps, IPs, emails"
echo "- contacts.txt: Contact information with various phone formats"
echo "- code_samples.txt: Code snippets with regex patterns"
echo "- data_mixed.txt: CSV with various date formats"
echo "- mixed_patterns.txt: File with credit cards, SSNs, IPs, etc."
echo "- access.log: Web server access log"
echo "- config.ini: Configuration file"
echo "- employees.csv: Employee data"
echo "- sample.json: JSON data"
echo "- sample.html: HTML file"
echo ""
echo "Ready for regex exercises!"
