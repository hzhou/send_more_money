digits = set(range(10))

def to_number(*digits):
    n = 0
    for d in digits:
        n = n * 10 + d
    return n

def let(x, f):
    return f(x)

def unit(x):
     return [x]

def bind(xs, f):
     ys = []
     for x in xs:
         ys += f(x)
     return ys

def guard(b, f):
     return f() if b else []

def solutions():
    return bind(digits - {0}, lambda s:
           bind(digits - {s}, lambda e:
           bind(digits - {s,e}, lambda n:
           bind(digits - {s,e,n}, lambda d:
           let(to_number(s,e,n,d), lambda send:
           bind(digits - {0,s,e,n,d}, lambda m:
           bind(digits - {s,e,n,d,m}, lambda o:
           bind(digits - {s,e,n,d,m,o}, lambda r:
           let(to_number(m,o,r,e), lambda more:
           bind(digits - {s,e,n,d,m,o,r}, lambda y:
           let(to_number(m,o,n,e,y), lambda money:
           guard(send + more == money, lambda:
           unit((send, more, money))))))))))))))

print(solutions())

