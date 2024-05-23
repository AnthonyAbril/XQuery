(: 7. Mostrar todos los bailes, excepto el 3 y 5. :)
<bailes>{for $baile in doc("baile.xml")/bailes/baile
where $baile/@id!=3 and $baile/@id!=5
return $baile}</bailes>