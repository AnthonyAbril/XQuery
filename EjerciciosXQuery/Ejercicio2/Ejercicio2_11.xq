(: 11. Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA. :)

for $libro in doc("libreria.xml")/bookstore/book
let $precio := $libro/price
return 
<libro>
  <titulo>{data($libro/title)}</titulo>
  <precio>{data($precio)}</precio>
  <precioIVA>{round($precio*0.04,2)}</precioIVA>
</libro>