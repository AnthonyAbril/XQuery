(: 10. Mostrar el precio mínimo y máximo de los libros. :)

for $libreria in doc("libreria.xml")/bookstore/book
return $libreria[price=ceiling(..//price)]/title/text()

(:
for $libro in doc("libreria.xml")/bookstore/book
return $libro[price=ceiling(../..//price)]/title/text()
:)