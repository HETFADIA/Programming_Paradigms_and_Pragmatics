def rev_str(a):
    l = []  # we make an empty list
    # reversed(a) return an iterator in the reversed list
    for i in reversed(a):
        # we traverse in the reverse iterator and append in the list l
        l.append(i)
        # thus all the strings will be appended
    # we join them using join function spaces are added in between
    print(" ".join(l))


rev_str(list(input("Enter string: ").split()))
# first we take input and split it and make its list so the list will be like ["abc","xyz","mno"]
