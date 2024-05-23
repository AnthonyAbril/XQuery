(: 1. Mostrar los títulos de los libros con la etiqueta "titulo". :)
for $libro in doc("libreria.xml")/bookstore/book
where exists($libro/title)
return $libro/title/text()