API="http://localhost:1337/games/populate"
#popular games
SORT="?sort=rating"
#free games
#SORT="?sort=rating&price=free"
PAGE='?page=1'


curl -X POST ${API}${SORT}${PAGE}
