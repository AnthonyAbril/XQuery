(: 10. Mostrar el precio mínimo y máximo de los libros. :)
for $libro in doc("libreria.xml")/bookstore/book
where floor($libro/price)=$libro/price
return $libro/title/text()