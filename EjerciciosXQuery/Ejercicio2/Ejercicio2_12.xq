(: 12. Mostrar la suma total de los precios de los libros con la etiqueta "total". :)

let $libreria := doc("libreria.xml")/bookstore/book
return <total>{sum($libreria/price)}</total>