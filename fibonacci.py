cube = lambda x: x**3
def fibonacci(n):
    a = [0,1]
    if n==0:
        return []
    elif n==1:
        return [0]
    else:
        for i in range(2,n):
            b = a[-1] + a[-2]
            a.append(b)
        return a
n=2
print(fibonacci(n))
print(list(map(cube, fibonacci(n))))
