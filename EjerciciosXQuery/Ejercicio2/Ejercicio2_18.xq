(: 18. Mostrar los libros que tengan una "X" mayúscula o minúscula en el título ordenados de manera descendente. :)

for $libro in doc("libreria.xml")/bookstore/book
where contains(upper-case(data($libro/title)),"X")
order by $libro/title descending
return $libro