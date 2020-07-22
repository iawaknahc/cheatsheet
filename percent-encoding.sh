# Encode
python3 -c "import sys, urllib.parse as u; print(u.quote_plus(sys.argv[1]))"
# Decode
python3 -c "import sys, urllib.parse as u; print(u.unquote_plus(sys.argv[1]))"
