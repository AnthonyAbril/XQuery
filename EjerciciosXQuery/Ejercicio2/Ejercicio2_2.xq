(: 2. Mostrar los libros cuyo precio sea menor o igual a 30. Primero incluyendo la condición en la cláusula "where" y luego en la ruta del XPath. :)
for $libro in doc("libreria.xml")/bookstore/book
return $libro[price<=30]

(: 
for $libro in doc("libreria.xml")/bookstore/book
where $libro/price<=30
return $libro
:)