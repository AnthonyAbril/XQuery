(: Muestra el nombre y la descripcion de los lugares donde hayan estado los
hobbits, sin repetir ninguna.
PUEDES usar predicados en las rutas xPath.
Los resultados deben estar ordenados por nombre del lugar.
La estructura deberá ser:
<lugares_hobbits>
<lugar>
<nombre></nombre>
<descripcion></descripcion>
</lugar>
...
</lugares_hobbits> :)

let $hobits := doc("personajesLOTR.xml")//personaje[raza="Hobbit"]
let $lugareshobits := distinct-values($hobits/lugares/lugar)
return 
<lugares_hobbits>{
  for $lugar in doc("lugaresLOTR.xml")//lugar
  where $lugar/nombre = $lugareshobits
  order by $lugar/nombre
  return 
  <lugar>{
    $lugar/nombre,
    $lugar/descripcion
  }</lugar>
}</lugares_hobbits>