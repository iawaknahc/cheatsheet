# Preprocess, compile and link to produce an executable ./a.out
cc main.c

# Preprocess, compile and link to produce an executable ./main.exe
cc -o main.exe main.c

# Preprocess and print to stdout
cc -E main.c

# Preprocess and compile to produce an object file main.o
cc -c main.c

# "" header
# 1. Search in the directory of the file with the #include line
# 2. Search in the directory specified by -I
# 3. Search in the standard location
#
# <> header
# 1. Search in the directory specified by -I
# 2. Search in the standard location
#
# Directories named in -I are searched in the order specified.
cc -I/usr/local/somelib/include main.c

# Link library
# -l mylib searches libmylib.a
# -L adds additional directories to search for libraries.
cc -I/usr/local/somelib/include -L/usr/local/somelib/lib main.c -lsomelib

# Compile-time #define
# Remove the definition with -U
cc -Dname=value main.c
cc -Dname=value -Uname main.c

# Include symbolic information
cc -g main.c

# Remove symbolic information
cc -s main.c

# Disable optimization
cc -O0 main.c

# Enable optimization
cc -O1 main.c
