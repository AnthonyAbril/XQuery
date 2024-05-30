(: 4. Mostrar sólo el título sin atributos de los libros cuyo precio sea menor o igual a 30. :)
for $libro in doc("libreria.xml")/bookstore/book
where $libro/price <=30
return <titulo>
{$libro/title/@* except $libro/title/@lang}
{data($libro/title)}
</titulo>