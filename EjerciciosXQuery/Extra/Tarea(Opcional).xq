(: Devuelve los títulos de todos los libros contenidos en el archivo "libros.xml" y todos los comentarios de cada libro contenidos en el archivo "comentarios.xml" de aquellos libros que tengan a W. Stevens o Peter Buneman entre sus autores. :)

let $b := doc("libros.xml")//libro[(autor/apellido="Stevens" and autor/nombre="W.") or (autor/apellido="Buneman" and autor/nombre="Peter")]

for $a in (doc("comentarios.xml")/comentarios/entrada|$b)
where $a/titulo=$b/titulo
return 
if(exists($a/comentario))then
$a/comentario
else
$a/titulo