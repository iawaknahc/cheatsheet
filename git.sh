# The first parent of d921970, the commit on "master" branch
d921970^

# The second parent of d921970, the commit on "topic" branch
d921970^2

# The parent of d921970
d921970~

# The first parent of the first parent of the first parent of d921970
d921970~3

# reachable from B but not reachable from A
git log A..B
git log ^A B
git log B --not A

# reachable from A or B but not both
git log A...B
