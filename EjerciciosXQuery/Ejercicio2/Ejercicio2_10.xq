(: 10. Mostrar el precio mínimo y máximo de los libros. :)

let $libreria := doc("libreria.xml")/bookstore/book[price=max(..//price) or price=min(..//price)]
let $maximo := $libreria[price=max(..//price)]
let $minimo := $libreria[price=min(..//price)]
return concat(
"maximo: ",$maximo/title,"
minimo: ",$minimo/title
)

(:
for $libreria in doc("libreria.xml")/bookstore/book
return
if($libreria/max(..//price)=$libreria/price)
  then
  <maximo>{$libreria[price=max(..//price)]/title/text()}</maximo>
  else if($libreria/min(..//price)=$libreria/price)
  then
  <minimo>{$libreria[price=min(..//price)]/title/text()}</minimo>
:)
