(: 17. Mostrar los libros cuya categoría empiece por "C". :)

for $libro in doc("libreria.xml")/bookstore/book
where starts-with(data($libro/@category),"C")
return $libro