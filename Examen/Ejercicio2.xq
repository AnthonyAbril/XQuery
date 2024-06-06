(: Genera un documento HTML, completo y bien formado, en el que muestres una
tabla que contenga en la primera columna el nombre de los lugares que acaben
en "a" y en la segunda sus descripciones.
La tabla deberá tener una cabecera adaptada al contenido.
NO PUEDES usar predicados en las rutas xPath. :)

<html>
  <head>
    <title>Ejercicio2</title>
  </head>
  <body>
    <h1>Lugares que acaben en "a"</h1>
    <table border="1">
        <tr>
          <th>nombre</th>
          <th>descripcion</th>
        </tr>
        {
          for $lugar in doc("lugaresLOTR.xml")//lugar
          where ends-with(upper-case($lugar/nombre),"A")
          return 
          <tr>
            <td>{$lugar/nombre}</td>
            <td>{$lugar/descripcion}</td>
          </tr>
        }
    </table>
  </body>
</html>