# GET /?a=b&c=d
curl -G --data-urlencode 'a=b' --data-urlencode 'c=d' http://localhost/

# POST /
# content-type: application/x-www-form-urlencoded
curl --data-urlencode 'a=b' --data-urlencode 'c=d' http://localhost/

# POST /
# content-type: application/json
curl --data-binary @my.json -H 'content-type: application/json' http://localhost/

# HEAD /
curl -I http://localhost/
