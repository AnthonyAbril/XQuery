<html>
  <head>
    <title>Ejercicio 22</title>
  </head>
  <body>
    <h1>Ejercicio 22</h1>
    <table border="1">
      <tr>
        <th>Títulos de los libros</th>
      </tr>
      {
        for $libro in doc("libreria.xml")//book
        order by $libro/title descending
        return 
        <tr>
          <td>{data($libro/title)}</td>
        </tr>
      }
    </table>
  </body>
</html>