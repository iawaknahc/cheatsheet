# string equality
#
# a == b
[ "$a" = "$b" ]

# string inequality
#
# a != b
[ "$a" != "$b" ]

# lexicographically less than
#
# a < b
[ "$a" \< "$b" ]

# lexicographically greater than
#
# a > b
[ "$a" \> "$b" ]

# integer comparision
#
# a == b
# a != b
# a > b
# a >= b
# a < b
# a <= b
[ "$a" -eq "$b" ]
[ "$a" -ne "$b" ]
[ "$a" -gt "$b" ]
[ "$a" -ge "$b" ]
[ "$a" -lt "$b" ]
[ "$a" -le "$b" ]

# not
#
# not a
[ ! a ]

# and
#
# a and b
[ a -a b ]

# or
#
# a or b
[ a -o b ]

# is sub a substring of full?
#
# sub in full
echo "$full" | grep >/dev/null -F "$sub"

# count the number of non-overlapping substring
#
# full.count(sub)
echo "$full" | grep -F -o "$sub" | wc -l

# check prefix
#
# s.startswith(prefix)
case "$s" in "$prefix"*) true ;; *) false ;; esac

# check suffix
#
# s.endswith(suffix)
case "$s" in *"$suffix") true ;; *) false ;; esac

# repeat string
#
# s * n
awk -v s="$s" -v n="$n" 'BEGIN{for(i=0;i<n;++i)printf("%s",s)}'

# trim leading spaces
#
# s.lstrip()
echo "$s" | sed 's/^[[:space:]]*//g'

# trim trailing spaces
#
# s.rstrip()
echo "$s" | sed 's/[[:space:]]*$//g'

# remove prefix
#
# s[len(prefix):]
${s#"$prefix"}

# remove suffix
#
# s[:-len(suffix)]
${s%"$suffix"}

# arithmetic
#
# 1 + 2
$((1 + 2))

# if
#
# if True:
#   pass
# elif True:
#   pass
# else:
#   pass
if true; then
	true
elif true; then
	true
else
	true
fi

# while
#
# while True:
#   pass
while true; do
	true
done

# function definition
#
# def foo():
#   pass
foo() {
	true
}

# Print and run command
# The trick is to create a subshell, set -x, and run the command
(set -x && echo hello)
