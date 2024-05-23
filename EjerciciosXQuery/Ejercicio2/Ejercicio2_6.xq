(: 6. Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion". :)

let $libro := doc("libreria.xml")/bookstore/book
return <publicacion>{$libro/year/text()}</publicacion>

(:
for $libro in doc("libreria.xml")/bookstore/book
return <publicacion>{$libro/year/text()}</publicacion>
:)