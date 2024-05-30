(: 20. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétalos con "año". :)

for $año in distinct-values(doc("libreria.xml")/bookstore/book/year)
return <año>{$año}</año>