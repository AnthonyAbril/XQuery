(: 15. Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título. :)

for $libro in doc("libreria.xml")/bookstore/book
return <titulo>{concat(data($libro/title)," (",count($libro/author),")")}</titulo>