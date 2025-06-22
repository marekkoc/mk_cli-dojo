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
- Always ask what is current id to start with?