(: 8. Mostrar profesores que den clases de bailes por una cuota mensual. :)
for $baile in doc("baile.xml")/bailes/baile
where $baile/precio/@cuota="mensual"
return $baile/profesor/text()