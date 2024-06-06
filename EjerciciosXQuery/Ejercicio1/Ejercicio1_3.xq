(: 3. Muestra el nombre y precio de todos los bailes donde su precio es mayor que 40. :)
for $baile in doc("baile.xml")/bailes/baile
let $nombre := $baile/nombre
let $precio := $baile/precio
let $resultado := concat("nombre: ",$nombre,"| precio: ",$precio, $baile/precio/@moneda)
where $baile/precio > 40
return $resultado