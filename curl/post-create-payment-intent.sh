API="http://localhost:1337/orders/create-payment-intent"
TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsImlhdCI6MTYyNTk0ODU3MSwiZXhwIjoxNjI4NTQwNTcxfQ.aUM4SRQf710rQn2OUj5PBt7X7Ur7titC8Lr_0rYxFpU"
DATA='{"cart":[{"id":1}]}'

echo `curl -X POST -H 'Content-Type: application/json' -H "Authorization: Bearer ${TOKEN}" -d ${DATA} ${API}` | json_pp


