# List all listening TCP ports
# -n            Do not resolve hostname
# -P            Do not resolve port name
# -iTCP         IPv4 or IPv6
# -sTCP:LISTEN  Include LISTEN state only
lsof -nP -iTCP -sTCP:LISTEN
