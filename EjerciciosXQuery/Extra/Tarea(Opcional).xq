(: Devuelve los títulos de todos los libros contenidos en el archivo "libros.xml" y todos los comentarios de cada libro contenidos en el archivo "comentarios.xml" de aquellos libros que tengan a W. Stevens o Peter Buneman entre sus autores. :)

for $a in doc("libros.xml")/bib/libro
  let $b := doc("comentarios.xml")/comentarios/entrada/comentario
return <libro>{
  $a/titulo
  ,if($b/../titulo=$a/titulo)
  then
  $b
  else()
}</libro>