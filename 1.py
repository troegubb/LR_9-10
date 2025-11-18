a = [2, 3, 4, 5, 6]
def mul_all(arr):
    res = 1
    for x in arr:
        res *= x
    return res
def mul_even(arr):
    res = 1
    for x in arr:
        if x % 2 == 0:
            res *= x
    return res
print("все элементы ", mul_all(a))
print("чет элементы ", mul_even(a))