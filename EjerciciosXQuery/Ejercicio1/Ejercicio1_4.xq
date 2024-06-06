(: 4. Mostrar los bailes ordenados por nombre. :)
for $baile in doc("baile.xml")/bailes/baile
let $nombre := data($baile/nombre)
order by $nombre
return $nombre