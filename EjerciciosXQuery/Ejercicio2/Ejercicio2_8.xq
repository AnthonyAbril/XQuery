(: 8. Mostrar cuántos libros hay, y etiquetarlo con "total". :)
let $libro := doc("libreria.xml")/bookstore/book
return <total>{count($libro)}</total>