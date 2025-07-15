def fibonacci(n: Int) -> Int:
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

def main():
    print("Fibonacci of 10:", fibonacci(10))
