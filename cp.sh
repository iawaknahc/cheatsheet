# Copy the contents of src to target recursively.
#
# This works on all UNIX-like systems, including macOS, Linux and BSD.
# This is the only synopsis that behave consistently in all UNIX-like systems.
#
# Whether or not target ends with slash does not make a difference.
#
# src/./a -> target/./a
# =>
# src/a -> target/a
#
# TL;DR cp -R must be used with src ended with /.
cp -R src/. target/
