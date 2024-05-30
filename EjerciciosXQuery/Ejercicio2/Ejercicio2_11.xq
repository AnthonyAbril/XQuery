(: 11. Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA. :)

for $libro in doc("libreria.xml")/bookstore/book
let $precio := $libro/price
return 
<libro>
  <titulo>{$libro/title}</titulo>
  <precio>{$precio}</precio>
  <precioIVA>{round($precio*0.21,2)}</precioIVA>
</libro>