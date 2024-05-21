for $b in doc("libros.xml")//libro
where $b/@anyo = "2000"
return $b/titulo