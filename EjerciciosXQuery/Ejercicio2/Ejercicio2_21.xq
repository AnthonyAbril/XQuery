(: 21. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor. :)

for $autor in distinct-values(doc("libreria.xml")//author)
order by string-length($autor)
return $autor