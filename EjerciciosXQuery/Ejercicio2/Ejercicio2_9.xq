(: 9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. :)

for $lib in doc("libreria.xml")/bookstore/book
return <titulo>
{
  $lib/title/text()
}
{
  if($lib/position()=count($lib))
  then
  <total>{count($lib)}</total>
  else()
}
</titulo>

(:
let $lib := doc("libreria.xml")/bookstore/book
return <libros>
{
  for $a at $i in $lib
  return <titulo>{$a/title/text()}</titulo>
}
{
  let $libros := doc("libreria.xml")/bookstore/book
  return <total>{count($libros)}</total>
}
</libros>
:)