(: 4. Mostrar los bailes ordenados por nombre. :)
for $baile in doc("baile.xml")/bailes/baile
let $nombre := $baile/nombre/text()
order by $nombre
return $nombre