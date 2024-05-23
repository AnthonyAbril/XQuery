(: 6. Mostrar el nombre de los bailes donde el apellido del profesor sea Lozano. :)
for $baile in doc("baile.xml")/bailes/baile
where contains($baile/profesor/text(),"Lozano")
return $baile/nombre/text()