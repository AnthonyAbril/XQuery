(: 1. Muestra el nombre de todos los bailes :)
let $baile := doc("baile.xml")/bailes/baile
return data($baile/nombre)