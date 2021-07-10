API="http://localhost:1337/orders/create-payment-intent"
TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsImlhdCI6MTYyNTk0ODU3MSwiZXhwIjoxNjI4NTQwNTcxfQ.aUM4SRQf710rQn2OUj5PBt7X7Ur7titC8Lr_0rYxFpU"
#valid id
#DATA='{"cart":[{"id":1}]}'
#invalid id
#DATA='{"cart":[{"id":989888}]}'
#multiple valid ids
# DATA='{"cart":[{"id":1},{"id":2},{"id":3}]}'
#free games ids
DATA='{"cart":[{"id":100},{"id":124}]}'
echo `curl -X POST -H 'Content-Type: application/json' -H "Authorization: Bearer ${TOKEN}" -d ${DATA} ${API}` | json_pp


