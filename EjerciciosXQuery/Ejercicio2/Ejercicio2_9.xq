(: 9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. :)

let $libro := doc("libreria.xml")/bookstore/book
let $total := count($libro)
return <libros>{
  $libro/title,
  $total
}</libros>