(: 5. Mostrar los nombres de los bailes que contienen una a :)
for $baile in doc("baile.xml")/bailes/baile
let $nombre := data($baile/nombre)
where contains($nombre,"a")
return $nombre