(: 9. Mostrar el nombre de los bailes de la sala 1, que se pague con euros y el precio sea menor a 35. :)
for $baile in doc("baile.xml")/bailes/baile
where $baile/sala/text()=1 and $baile/precio/@moneda="euro" and $baile/precio/text()<35
return $baile/nombre/text()