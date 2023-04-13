def present(a, i):
    # will return if i is present in a
    return i in a


def RemDupLoop(a):
    l = []
    # we make an empty list
    for i in a:
        # we traverse in the list a
        if not present(l, i):
            # if the element is not in the list we append it in the another list
            l.append(i)
    # this method is order n^2 because element is present in l or not is order n and there is another loop
    return l


def RemDupSet(a):
    # first we make a set of the list a
    duplicates_removed = set(a)
    # then we return a list of the set which does not contain duplicates
    return list(duplicates_removed)


l = list(map(int, input("Enter the list: ").split()))
# we take the input
print("List after deleting duplicates using loop:")
print(*RemDupLoop(l))
print("List after deleting duplicates using set:")
print(*RemDupSet(l))
