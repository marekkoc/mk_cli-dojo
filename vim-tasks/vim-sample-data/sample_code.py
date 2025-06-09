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
