(: 19. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta. :)

for $libro in doc("libreria.xml")/bookstore/book
return <libro>{
  <titulo>{$libro/title/data()}</titulo>,
  <nCaracteres>{string-length($libro/title)}</nCaracteres>
}</libro>