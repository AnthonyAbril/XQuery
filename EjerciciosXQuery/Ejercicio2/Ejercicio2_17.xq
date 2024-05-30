(: 17. Mostrar los libros cuya categoría empiece por "C". :)

for $libro in doc("libreria.xml")/bookstore/book
where starts-with($libro/@category/data(),"C")
return $libro