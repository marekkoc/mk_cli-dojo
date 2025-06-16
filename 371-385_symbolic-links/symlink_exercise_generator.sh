#!/bin/bash

# Symbolic Links Exercise Files Generator
# Creates comprehensive test environment for symbolic link learning tasks

echo "Creating symbolic links exercise environment..."

# Create main directory for exercises
mkdir -p symlink_exercises
cd symlink_exercises

# Clean up any existing structure
rm -rf * 2>/dev/null

# 1. Create basic directory structure
echo "Setting up directory structure..."
mkdir -p {apps,bin,config,data,logs,backup,temp,shared}
mkdir -p apps/{web,api,mobile}
mkdir -p data/{database,files,reports}
mkdir -p config/{production,staging,development}

# 2. Create sample files for linking
echo "Creating sample files..."

# Application files
cat > apps/web/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head><title>Web App</title></head>
<body><h1>Main Web Application</h1></body>
</html>
EOF

cat > apps/web/style.css << 'EOF'
body { font-family: Arial, sans-serif; }
h1 { color: #333; }
EOF

cat > apps/api/server.js << 'EOF'
const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('API Server'));
app.listen(3000);
EOF

# Configuration files
cat > config/production/database.conf << 'EOF'
host=prod-db.company.com
port=5432
database=production
username=prod_user
password=prod_secret_123
EOF

cat > config/staging/database.conf << 'EOF'
host=staging-db.company.com
port=5432
database=staging
username=staging_user
password=staging_secret_456
EOF

cat > config/development/database.conf << 'EOF'
host=localhost
port=5432
database=development
username=dev_user
password=dev_secret_789
EOF

# Data files
echo "sales,2024-01,15000" > data/reports/sales_jan.csv
echo "sales,2024-02,18000" > data/reports/sales_feb.csv
echo "sales,2024-03,22000" > data/reports/sales_mar.csv

cat > data/database/schema.sql << 'EOF'
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    total DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT NOW()
);
EOF

# Binary and executable files
cat > bin/deploy.sh << 'EOF'
#!/bin/bash
echo "Deploying application..."
echo "Environment: $1"
echo "Version: $2"
EOF
chmod +x bin/deploy.sh

cat > bin/backup.sh << 'EOF'
#!/bin/bash
echo "Creating backup..."
tar -czf backup_$(date +%Y%m%d).tar.gz data/
EOF
chmod +x bin/backup.sh

cat > bin/monitor.sh << 'EOF'
#!/bin/bash
echo "System monitoring started..."
while true; do
    echo "$(date): System OK"
    sleep 60
done
EOF
chmod +x bin/monitor.sh

# Log files
echo "2024-01-15 10:30:00 INFO Application started" > logs/app.log
echo "2024-01-15 10:31:00 ERROR Database connection failed" >> logs/app.log
echo "2024-01-15 10:32:00 INFO Database reconnected" >> logs/app.log

echo "2024-01-15 10:30:00 ERROR 404 /missing-page" > logs/error.log
echo "2024-01-15 10:35:00 ERROR 500 Internal server error" >> logs/error.log

# Version directories for different releases
mkdir -p versions/{v1.0,v1.1,v1.2,v2.0}

# Create different versions of the same file
cat > versions/v1.0/app.js << 'EOF'
// Version 1.0
console.log("App v1.0 starting...");
module.exports = { version: "1.0" };
EOF

cat > versions/v1.1/app.js << 'EOF'
// Version 1.1 - Bug fixes
console.log("App v1.1 starting...");
module.exports = { version: "1.1", bugfixes: true };
EOF

cat > versions/v1.2/app.js << 'EOF'
// Version 1.2 - New features
console.log("App v1.2 starting...");
module.exports = { version: "1.2", features: ["auth", "api"] };
EOF

cat > versions/v2.0/app.js << 'EOF'
// Version 2.0 - Major release
console.log("App v2.0 starting...");
module.exports = { version: "2.0", breaking: true, features: ["auth", "api", "dashboard"] };
EOF

# Create library directories for shared dependencies
mkdir -p libraries/{nodejs,python,java}
mkdir -p libraries/nodejs/{express,lodash,moment}
mkdir -p libraries/python/{django,flask,requests}

# Create some "installed" libraries
echo '{"name": "express", "version": "4.18.0"}' > libraries/nodejs/express/package.json
echo '{"name": "lodash", "version": "4.17.21"}' > libraries/nodejs/lodash/package.json
echo 'Django==4.2.0' > libraries/python/django/requirements.txt
echo 'Flask==2.3.0' > libraries/python/flask/requirements.txt

# Create documentation files
mkdir -p docs
cat > docs/README.md << 'EOF'
# Project Documentation

## Setup
1. Install dependencies
2. Configure database
3. Run application

## Deployment
Use the deploy.sh script for deployment.
EOF

cat > docs/API.md << 'EOF'
# API Documentation

## Endpoints
- GET /users - List users
- POST /users - Create user
- GET /users/:id - Get user details
EOF

# Create broken symlinks for testing
mkdir -p broken_links
ln -s /nonexistent/file broken_links/dead_link
ln -s ../missing/file.txt broken_links/missing_target

# Create some existing symlinks for demonstration
ln -s apps/web/index.html current_index.html
ln -s config/development/database.conf current_config.conf
ln -s bin/deploy.sh deploy
ln -s data/reports/ reports

# Create files with spaces and special characters (for advanced linking)
mkdir -p "special names"
touch "special names/file with spaces.txt"
touch "special names/file-with-dashes.txt"
touch "special names/file_with_underscores.txt"

# Create a hierarchical project structure for relative linking practice
mkdir -p project/{src,tests,build,dist}
mkdir -p project/src/{components,utils,assets}
touch project/src/main.js
touch project/src/components/header.js
touch project/src/utils/helpers.js
touch project/tests/unit_tests.js
touch project/build/Makefile

# Create a shared resources area
mkdir -p shared/{images,fonts,stylesheets}
echo "/* Global styles */" > shared/stylesheets/global.css
echo "/* Theme styles */" > shared/stylesheets/theme.css

# Create environment-specific directories
mkdir -p environments/{dev,test,prod}

# Create a tools directory
mkdir -p tools
cat > tools/lint.sh << 'EOF'
#!/bin/bash
echo "Running linter..."
EOF
chmod +x tools/lint.sh

cat > tools/test.sh << 'EOF'
#!/bin/bash
echo "Running tests..."
EOF
chmod +x tools/test.sh

# Create a samples directory with different file types
mkdir -p samples
echo "Sample text content" > samples/sample.txt
echo '{"sample": "json"}' > samples/sample.json
echo "sample,data,csv" > samples/sample.csv

echo ""
echo "Symbolic links exercise environment created successfully!"
echo ""
echo "Directory structure:"
tree . 2>/dev/null || find . -type d | sort
echo ""
echo "Files created:"
find . -type f | wc -l | xargs echo "Total files:"
echo ""
echo "Existing symbolic links:"
find . -type l -ls 2>/dev/null
echo ""
echo "Ready for symbolic link exercises!"
echo ""
echo "Key directories for exercises:"
echo "- apps/          : Application files"
echo "- config/        : Configuration files for different environments"
echo "- bin/           : Executable scripts"
echo "- data/          : Data and reports"
echo "- versions/      : Different software versions"
echo "- libraries/     : Shared libraries"
echo "- docs/          : Documentation"
echo "- environments/  : Environment-specific setups"
echo "- project/       : Sample project structure"
echo "- shared/        : Shared resources"