#!/bin/sh
# For each file in /usr/bin, check if the first line match the shebang pattern ^#!.*perl
# Some programs may have the Perl version as suffix in the name.
find /usr/bin -exec sh -c '2>/dev/null head -n 1 "{}" | grep -q -E "^#!.*perl"' \; -print | sort
