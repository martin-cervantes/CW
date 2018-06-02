index = 0
A = []
B = []
C = []

def Pares():
    index = 0

    for i in range(1, 100):
        if i % 2 == 0:
            A[index] = i
            index += 1

    print A

def Pares1():
    index = 0

    for i in range(101, 200):
        if i % 2 == 0:
            B[index] = i
            index += 1

     print B

def Suma():
    for i in range(0, 50):
        C[i] = A[i] + B[i]

     print C


Pares()

Pares1()

Suma()
