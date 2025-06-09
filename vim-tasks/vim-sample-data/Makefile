# Makefile for VIM quickfix practice
# Use with :make command in VIM

PYTHON = python3
PYLINT = pylint
PEP8 = pycodestyle

# Default target
all: check test

# Check code quality
check: lint pep8

# Run pylint on Python files
lint:
	$(PYLINT) sample_code.py

# Check PEP8 compliance
pep8:
	$(PEP8) sample_code.py

# Run Python file
test:
	$(PYTHON) sample_code.py

# Syntax check only
syntax:
	$(PYTHON) -m py_compile sample_code.py

# Clean compiled Python files
clean:
	rm -rf __pycache__/
	find . -name "*.pyc" -delete

# Create backup of source files
backup:
	tar -czf backup_$(shell date +%Y%m%d_%H%M%S).tar.gz *.py *.txt *.conf

# Help target
help:
	@echo "Available targets:"
	@echo "  all     - Run check and test"
	@echo "  check   - Run lint and pep8"
	@echo "  lint    - Run pylint"
	@echo "  pep8    - Check PEP8 compliance"
	@echo "  test    - Run the Python script"
	@echo "  syntax  - Check syntax only"
	@echo "  clean   - Remove compiled files"
	@echo "  backup  - Create backup archive"
	@echo "  help    - Show this help"

.PHONY: all check lint pep8 test syntax clean backup help
