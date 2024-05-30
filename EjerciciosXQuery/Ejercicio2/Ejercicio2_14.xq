(: 14. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes. :)

for $libro in doc("libreria.xml")/bookstore/book
return <libro>{
  <titulo>{$libro/title/data()}</titulo>,
  <autores>{count($libro/author)}</autores>
}</libro>