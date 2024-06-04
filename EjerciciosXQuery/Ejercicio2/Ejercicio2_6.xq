(: 6. Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion". :)

let $libro := doc("libreria.xml")/bookstore/book
return <publicacion>{$libro/year}</publicacion>
(:
<publicacion>{
for $libro in doc("libreria.xml")/bookstore/book
return <publicacion>{data($libro/year)}</publicacion>
}</publicacion>
:)