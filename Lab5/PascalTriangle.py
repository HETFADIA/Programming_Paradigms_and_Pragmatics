def add_adjacent(a):
    # this function returns the sum of adjacent elements
    return [a[i]+a[i-1] for i in range(1, len(a)) if i != 0]


def pascal_triangle(n):
    l = [[1]]*n
    # first we make a list of list
    for i in range(1, n):
        # the add adjacent function returns the sum of adjacent elements
        # [1] is appended at first and last
        l[i] = [1]+add_adjacent(l[i-1])+[1]
    for i in range(n):
        for j in range(len(l[i])):
            # we make the l[i][j] a list
            l[i][j] = str(l[i][j])
        # then we join them
        l[i] = " ".join(l[i])
        # we make it string because we can center align it easily using an inbuilt function
    length = len(l[-1])+10
    # if the length is even then we make it odd by making it odd by adding 1 to it
    if length % 2 == 0:
        length += 1
    for i in l:
        # we print all the list
        # centre is an inbuilt function which centres the string and prints it
        print(i.center(length))


pascal_triangle(int(input("Enter n: ")))
# it takes input and converts into int
