#!/bin/bash
# Script to create sample files specifically for VIM tasks (000-079)
# This script creates all necessary practice files for learning VIM editor

# Create vim_practice directory
mkdir -p vim-sample-data
cd vim-sample-data

echo "Creating VIM practice files..."
echo "=========================================="

# ============================================================================
# PRIMARY TEXT FILE - Alice in Wonderland (for most VIM practice tasks)
# ============================================================================

echo "📖 Creating primary text file: alice.txt"
cat > alice.txt << 'EOF'
Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, 'and what is the use of a book,' thought Alice 'without pictures or conversations?'

So she was considering, in her own mind (as well as she could, for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Rabbit with pink eyes ran close by her.

There was nothing so very remarkable about that; nor did Alice think it so very much out of the ordinary, until the Rabbit took a watch out of its waistcoat-pocket, and looked at it, and then hurried on, crying, 'Oh dear! Oh dear! I shall be late!'

When Alice heard this, she jumped up, for it flashed across her mind that she had never before heard a rabbit speak, and burning with curiosity, she ran across the field after it, and fortunately was just in time to see it pop down a large rabbit-hole under the hedge.

In another moment down went Alice after it, never once considering whether the hole was large enough for her, or what might happen if she fell down it. The hole turned out to be a rabbit-hole indeed, and it went straight down like a well.

Alice found herself falling down what seemed to be a very deep hole. She had plenty of time to look about her and to wonder what was going to happen next. First, she looked down and tried to see the bottom, but it was too dark.

The fall was very slow, so Alice had time to think about many things. She wondered how far she had fallen and when she would reach the bottom. Sometimes she looked at the sides of the hole and saw cupboards and shelves filled with books and maps.

As she fell, Alice tried to grab something to stop her fall, but everything was too far away. She began to think about her cat, Dinah, and wondered what would happen to her. Would anyone miss her if she disappeared down this hole forever?

Finally, after what seemed like hours but was probably only minutes, Alice landed softly on a pile of leaves and sticks. She was not hurt at all, which surprised her greatly. Looking around, she found herself in a long, low hall with doors all around.

The hall was lit by lamps hanging from the ceiling. Alice walked around trying each door, but they were all locked. She was beginning to wonder how she would ever get out of this strange place when she noticed a small table in the center of the hall.
EOF

# ============================================================================
# MODIFIED VERSION FOR DIFF PRACTICE (vimdiff tasks)
# ============================================================================

echo "📝 Creating modified text file: alice_modified.txt"
cat > alice_modified.txt << 'EOF'
Alice Smith was beginning to get very tired of sitting by her sister on the riverbank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, 'and what is the use of a book,' thought Alice 'without pictures or conversations?'

So she was considering, in her own mind (as well as she could, for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Bunny with pink eyes ran close by her.

There was nothing so very remarkable about that; nor did Alice think it so very much out of the ordinary, until the Bunny took a watch out of its waistcoat-pocket, and looked at it, and then hurried on, crying, 'Oh my! Oh my! I shall be late!'

When Alice heard this, she jumped up, for it flashed across her mind that she had never before heard a bunny speak, and burning with curiosity, she ran across the field after it, and fortunately was just in time to see it pop down a large rabbit-hole under the hedge.

In another moment down went Alice after it, never once considering whether the hole was large enough for her, or what might happen if she fell down it. The hole turned out to be a rabbit-hole indeed, and it went straight down like a well.

Alice found herself falling down what seemed to be a very deep hole. She had plenty of time to look about her and to wonder what was going to happen next. First, she looked down and tried to see the bottom, but it was too dark.

The fall was very slow, so Alice had time to think about many things. She wondered how far she had fallen and when she would reach the bottom. Sometimes she looked at the sides of the hole and saw cupboards and shelves filled with books and maps.

As she fell, Alice tried to grab something to stop her fall, but everything was too far away. She began to think about her cat, Dinah, and wondered what would happen to her. Would anyone miss her if she disappeared down this hole forever?

Finally, after what seemed like hours but was probably only minutes, Alice landed softly on a pile of leaves and sticks. She was not hurt at all, which surprised her greatly. Looking around, she found herself in a long, low hall with doors all around.

The hall was lit by lamps hanging from the ceiling. Alice walked around trying each door, but they were all locked. She was beginning to wonder how she would ever get out of this strange place when she noticed a small table in the center of the hall.
EOF

# ============================================================================
# PROGRAMMING FILES (syntax highlighting, folding, quickfix practice)
# ============================================================================

echo "🐍 Creating Python file: sample_code.py"
cat > sample_code.py << 'EOF'
#!/usr/bin/env python3
"""
Sample Python file for VIM practice
Includes functions, classes, and various Python constructs
"""

def fibonacci(n):
    """Calculate Fibonacci number recursively"""
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

def fibonacci_iterative(n):
    """Calculate Fibonacci number iteratively"""
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

class NumberProcessor:
    """A class for processing numbers"""
    
    def __init__(self, initial_value=0):
        self.value = initial_value
        self.history = [initial_value]
    
    def add(self, num):
        """Add number to current value"""
        self.value += num
        self.history.append(self.value)
        return self.value
    
    def multiply(self, num):
        """Multiply current value by number"""
        self.value *= num
        self.history.append(self.value)
        return self.value
    
    def get_history(self):
        """Return calculation history"""
        return self.history.copy()

def main():
    """Main function demonstrating the code"""
    print("Fibonacci sequence (recursive):")
    for i in range(10):
        print(f"F({i}) = {fibonacci(i)}")
    
    print("\nFibonacci sequence (iterative):")
    for i in range(10):
        print(f"F({i}) = {fibonacci_iterative(i)}")
    
    # Test NumberProcessor class
    processor = NumberProcessor(10)
    processor.add(5)
    processor.multiply(2)
    processor.add(3)
    
    print(f"\nProcessor final value: {processor.value}")
    print(f"Calculation history: {processor.get_history()}")

if __name__ == "__main__":
    main()
EOF

echo "🌐 Creating HTML file: sample.html"
cat > sample.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alice's Adventures - VIM Practice</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            line-height: 1.6;
            margin: 0 auto;
            max-width: 800px;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .header {
            text-align: center;
            color: #2c3e50;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        .content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .quote {
            font-style: italic;
            color: #7f8c8d;
            border-left: 4px solid #3498db;
            padding-left: 15px;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to Alice's Adventures</h1>
        <h2>A VIM Practice Environment</h2>
    </div>
    
    <div class="content">
        <h3>VIM Learning Objectives</h3>
        <ul>
            <li>Master basic navigation (hjkl, w, b, e)</li>
            <li>Learn text editing commands (d, y, p, c)</li>
            <li>Practice search and replace operations</li>
            <li>Understand visual mode selections</li>
            <li>Work with multiple files and windows</li>
        </ul>
        
        <div class="quote">
            "Alice was beginning to get very tired of sitting by her sister on the bank..."
        </div>
        
        <h3>Advanced Features to Explore</h3>
        <ol>
            <li>Macros and automation</li>
            <li>Registers and clipboard operations</li>
            <li>Custom .vimrc configuration</li>
            <li>Plugin management</li>
            <li>Diff mode and file comparison</li>
        </ol>
        
        <p>Practice these features using the provided text files and coding examples.</p>
    </div>
    
    <script>
        // Simple JavaScript for demonstration
        document.addEventListener('DOMContentLoaded', function() {
            console.log('Alice\'s Adventures VIM practice page loaded');
            
            // Add click handler to headers
            const headers = document.querySelectorAll('h1, h2, h3');
            headers.forEach(header => {
                header.addEventListener('click', function() {
                    this.style.color = this.style.color === 'red' ? '' : 'red';
                });
            });
        });
    </script>
</body>
</html>
EOF

echo "⚙️ Creating configuration file: config_sample.conf"
cat > config_sample.conf << 'EOF'
# Sample configuration file for VIM practice
# This file demonstrates various config file patterns

[server]
host = localhost
port = 8080
ssl_enabled = true
max_connections = 100

[database]
url = jdbc:mysql://localhost:3306/testdb
username = admin
password = secret123
pool_size = 10
timeout = 30

[cache]
enabled = true
timeout = 3600
max_size = 1000
backend = redis

[logging]
level = INFO
file = /var/log/application.log
rotation = daily
max_files = 7

[features]
debug_mode = false
profiling = true
metrics = enabled
notifications = email,slack

# API Configuration
api.version = v1
api.rate_limit = 1000
api.auth_required = true

# Email settings
email.smtp.host = smtp.example.com
email.smtp.port = 587
email.smtp.username = noreply@example.com
email.smtp.password = email_secret
EOF

# ============================================================================
# MAKEFILE FOR QUICKFIX PRACTICE
# ============================================================================

echo "🔧 Creating Makefile for quickfix practice"
cat > Makefile << 'EOF'
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
EOF

# ============================================================================
# FILES FOR SPECIFIC VIM FEATURES
# ============================================================================

echo "📋 Creating list file for sorting practice: todo_list.txt"
cat > todo_list.txt << 'EOF'
zebra
apple
banana
cherry
apple
dog
elephant
cat
banana
fish
grape
horse
iguana
jackal
kangaroo
lion
mouse
newt
octopus
penguin
EOF

echo "🔢 Creating numbers file for increment practice: numbers.txt"
cat > numbers.txt << 'EOF'
Version 1.0.0
Build 100
Port 8080
Timeout 30
MaxUsers 50
Buffer 1024
Threads 4
Retries 3
Delay 500
Priority 1
EOF

echo "📊 Creating data file for column editing: data_table.txt"
cat > data_table.txt << 'EOF'
Name        Age  City          Salary
John        25   New York      50000
Jane        30   London        60000
Bob         28   Paris         55000
Alice       35   Tokyo         70000
Charlie     22   Berlin        45000
Diana       29   Sydney        65000
Eve         31   Toronto       58000
Frank       27   Madrid        52000
EOF

echo "🔤 Creating file with quotes for text object practice: quotes_example.txt"
cat > quotes_example.txt << 'EOF'
"Hello, world!" she said with a smile.
The config file contains 'debug=true' and 'verbose=false'.
Alice thought "What is the use of a book without pictures?"
Variables like $HOME and $PATH are important.
HTML tags: <div class="container">content</div>
Function call: process_data(input, output, options)
Array access: items[0], items[1], items[2]
JSON: {"name": "Alice", "age": 25, "city": "Wonderland"}
EOF

echo "🗂️ Creating file for folding practice: large_document.txt"
cat > large_document.txt << 'EOF'
Chapter 1: The Beginning
========================

Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it.

Chapter 2: The White Rabbit
============================

So she was considering, in her own mind (as well as she could, for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Rabbit with pink eyes ran close by her.

Chapter 3: Down the Rabbit Hole
================================

When Alice heard this, she jumped up, for it flashed across her mind that she had never before heard a rabbit speak, and burning with curiosity, she ran across the field after it, and fortunately was just in time to see it pop down a large rabbit-hole under the hedge.

Chapter 4: The Fall
====================

Alice found herself falling down what seemed to be a very deep hole. She had plenty of time to look about her and to wonder what was going to happen next. First, she looked down and tried to see the bottom, but it was too dark.

Chapter 5: The Hall of Doors
=============================

Finally, after what seemed like hours but was probably only minutes, Alice landed softly on a pile of leaves and sticks. She was not hurt at all, which surprised her greatly. Looking around, she found herself in a long, low hall with doors all around.
EOF

# ============================================================================
# VIM CONFIGURATION TEMPLATES
# ============================================================================

echo "⚙️ Creating basic .vimrc template: vimrc_basic"
cat > vimrc_basic << 'EOF'
" Basic VIM configuration template
" Copy to ~/.vimrc to use

" Basic settings
set number                " Show line numbers
set relativenumber        " Show relative line numbers
set tabstop=4            " Number of spaces for tab
set shiftwidth=4         " Number of spaces for indentation
set expandtab            " Use spaces instead of tabs
set autoindent           " Auto-indent new lines
set smartindent          " Smart indentation

" Search settings
set ignorecase           " Ignore case in search
set smartcase            " Case-sensitive if uppercase used
set hlsearch             " Highlight search results
set incsearch            " Incremental search

" Visual settings
syntax on                " Enable syntax highlighting
set showcmd              " Show command in bottom bar
set showmatch            " Highlight matching brackets
set ruler                " Show cursor position
set laststatus=2         " Always show status line

" Behavior settings
set backspace=indent,eol,start  " Allow backspace in insert mode
set wildmenu             " Enhanced command completion
set wildmode=longest:full,full  " Command completion mode

" Key mappings
nnoremap <F2> :w<CR>                    " F2 to save
inoremap jk <Esc>                       " jk to exit insert mode
nnoremap <leader>n :set number!<CR>     " Toggle line numbers

" Auto commands
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd BufWritePre * :%s/\s\+$//e      " Remove trailing whitespace on save
EOF

echo "🚀 Creating advanced .vimrc template: vimrc_advanced"
cat > vimrc_advanced << 'EOF'
" Advanced VIM configuration template
" Copy to ~/.vimrc for advanced features

" Enable pathogen for plugin management
execute pathogen#infect()

" Basic settings (from basic config)
set number relativenumber
set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent
set ignorecase smartcase
set hlsearch incsearch
syntax on
set showcmd showmatch ruler laststatus=2

" Advanced settings
set hidden               " Allow hidden buffers
set history=1000         " Command history
set undolevels=1000      " Undo history
set undofile             " Persistent undo
set undodir=~/.vim/undo  " Undo directory
set backup               " Enable backups
set backupdir=~/.vim/backup  " Backup directory
set directory=~/.vim/swap    " Swap file directory

" Visual enhancements
set cursorline           " Highlight current line
set colorcolumn=80       " Show column at 80 characters
set scrolloff=5          " Keep 5 lines above/below cursor
set sidescrolloff=5      " Keep 5 columns left/right of cursor

" Advanced key mappings
let mapleader = ","                      " Set leader key
nnoremap <leader>w :w<CR>                " Quick save
nnoremap <leader>q :q<CR>                " Quick quit
nnoremap <leader>h :nohlsearch<CR>       " Clear search highlight
nnoremap <leader>ev :e $MYVIMRC<CR>      " Edit vimrc
nnoremap <leader>sv :source $MYVIMRC<CR> " Source vimrc

" Window navigation
nnoremap <C-h> <C-w>h    " Move to left window
nnoremap <C-j> <C-w>j    " Move to bottom window
nnoremap <C-k> <C-w>k    " Move to top window
nnoremap <C-l> <C-w>l    " Move to right window

" Buffer navigation
nnoremap <leader>bn :bnext<CR>           " Next buffer
nnoremap <leader>bp :bprevious<CR>       " Previous buffer
nnoremap <leader>bd :bdelete<CR>         " Delete buffer

" Custom functions
function! ToggleNumber()
    if &number
        set nonumber norelativenumber
    else
        set number relativenumber
    endif
endfunction
nnoremap <F3> :call ToggleNumber()<CR>

" Auto commands for different file types
augroup filetype_settings
    autocmd!
    autocmd FileType python setlocal foldmethod=indent
    autocmd FileType html,css,javascript setlocal tabstop=2 shiftwidth=2
    autocmd FileType vim setlocal foldmethod=marker
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" Status line customization
set statusline=%f         " Filename
set statusline+=%m        " Modified flag
set statusline+=%r        " Readonly flag
set statusline+=%h        " Help flag
set statusline+=%w        " Preview flag
set statusline+=%=        " Left/right separator
set statusline+=%c,       " Cursor column
set statusline+=%l/%L     " Cursor line/total lines
set statusline+=\ %P      " Percent through file
EOF

# ============================================================================
# CREATE DIRECTORIES AND FINISH
# ============================================================================

# Create practice directories
mkdir -p backup_files
mkdir -p test_splits

echo ""
echo "📁 Creating practice directories:"
echo "   backup_files/ - for file operation practice"
echo "   test_splits/  - for window/split practice"

cd ..

echo ""
echo "=========================================="
echo "✅ VIM practice environment created successfully!"
echo ""
echo "📂 Created directory: vim_practice/"
echo ""
echo "📝 Text files for basic practice:"
echo "   alice.txt           - Main practice text (Lewis Carroll)"
echo "   alice_modified.txt  - Modified version for diff practice"
echo "   quotes_example.txt  - Text objects and bracket practice"
echo "   large_document.txt  - Folding and navigation practice"
echo ""
echo "💻 Code files for advanced practice:"
echo "   sample_code.py      - Python syntax highlighting, folding"
echo "   sample.html         - HTML/CSS/JS syntax practice"
echo "   config_sample.conf  - Configuration file editing"
echo "   Makefile           - Quickfix and compilation practice"
echo ""
echo "🛠️ Utility files:"
echo "   todo_list.txt       - Sorting and list management"
echo "   numbers.txt         - Increment/decrement practice"
echo "   data_table.txt      - Column editing and visual block"
echo ""
echo "⚙️ Configuration templates:"
echo "   vimrc_basic         - Basic .vimrc setup"
echo "   vimrc_advanced      - Advanced .vimrc with plugins"
echo ""
echo "🚀 Quick start:"
echo "   cd vim_practice"
echo "   vim alice.txt       # Start with basic text editing"
echo "   vim sample_code.py  # Practice with code syntax"
echo "   vimdiff alice.txt alice_modified.txt  # Try diff mode"
echo ""
echo "📚 These files support VIM tasks 000-079:"
echo "   000-019: Basics and navigation"
echo "   020-039: Advanced editing and text objects"
echo "   040-059: Windows, buffers, and registers"
echo "   060-079: Configuration and expert features"
echo ""
echo "💡 Tip: Copy vimrc_basic to ~/.vimrc for a good starting configuration!"
