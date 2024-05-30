(: 13. Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con la suma de los precios. :)

let $libreria := doc("libreria.xml")/bookstore/book
return <libros>{
  <libro>{$libreria/title/text()}</libro>,
  <precio>{$libreria/price/text()}</precio>,
  <total>{sum($libreria/price)}</total>
}</libros>