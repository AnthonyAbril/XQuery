(: 16. Mostrar los libros escritos en años que terminen en "3". :)

for $libreria in doc("libreria.xml")/bookstore/book
let $año := data($libreria/year)
where ends-with($año,"3")
return $libreria