(: 4. Mostrar sólo el título sin atributos de los libros cuyo precio sea menor o igual a 30. :)
for $libro in doc("libreria.xml")/bookstore/book
return $libro[price <=30]/title except $libro/title/@*