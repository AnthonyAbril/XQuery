let $hobits := doc("personajesLOTR.xml")//personaje[raza="Hobbit"]
let $lugareshobits := distinct-values($hobits/lugares/lugar)
return 
<lugares_hobbits>{
  for $lugar in doc("lugaresLOTR.xml")//lugar
  where some $a in $lugar
  satisfies($a/nombre = $lugareshobits)
  order by $lugar/nombre
  return 
  <lugar>{
    $lugar/nombre,
    $lugar/descripcion
  }</lugar>
}</lugares_hobbits>