(: 13. Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con la suma de los precios. :)

let $libreria := doc("libreria.xml")/bookstore/book
return <precios>{$libreria/price,
  <total>{sum($libreria/price)}</total>}</precios>