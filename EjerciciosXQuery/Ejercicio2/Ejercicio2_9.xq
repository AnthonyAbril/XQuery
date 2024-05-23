(: 9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. :)

let $libro := doc("libreria.xml")/bookstore/book
return {$libro}<total>{count($libro)}</total>