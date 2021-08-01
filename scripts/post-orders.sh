API="http://localhost:1337/orders"
TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsImlhdCI6MTYyNzg1NTE4NCwiZXhwIjoxNjMwNDQ3MTg0fQ.5c6DSr0D9sdE2cVkLdeEZg7827SgAa-AmiqkY1u0Jn4"
DATA='{"cart":[{"id":1},{"id":2},{"id":3}],"paymentIntentId":"pi_3JJma1AXa31eixZc2yZG2z0k","payment_method":null}'
echo `curl -X POST -H 'Content-Type: application/json' -H "Authorization: Bearer ${TOKEN}" -d ${DATA} ${API}` | json_pp


