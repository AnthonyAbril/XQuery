(: 16. Mostrar los libros escritos en años que terminen en "3". :)

for $libreria in doc("libreria.xml")/bookstore/book
let $año := $libreria/year/data()
where ends-with($año,"5")
return $libreria