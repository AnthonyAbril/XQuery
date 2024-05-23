(: 2. Muestra el nombre y precio de todos los bailes :)
for $baile in doc("baile.xml")/bailes/baile
return concat("nombre: ",$baile/nombre/text(),"| precio: ",$baile/precio/text(), $baile/precio/@moneda)