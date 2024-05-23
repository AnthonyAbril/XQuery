(: 5. Mostrar los nombres de los bailes que contienen una a :)
for $baile in doc("baile.xml")/bailes/baile
let $nombre := $baile/nombre/text()
where contains($baile/nombre/text(),"a")
return $nombre