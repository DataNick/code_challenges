# x and y point to the same object after the assignment x = y
x = [1,2,3]
y = x
y equals [1,2,3]
x[1] = "cats" --> [1, "cats", 3]
y --> [1, "cats", 3]
y[1] = "dogs" --> [1, "dogs", 3]
x --> [1, "dogs", 3]