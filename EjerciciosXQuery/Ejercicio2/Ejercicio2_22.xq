(: 22. Mostrar los títulos en una tabla de HTML. :)

let $titulos := doc("libreria.xml")/bookstore/book/title/data()
return
<html>
    <head>
        <title>Ejercicio de XQuery</title>
    </head>
    <body>
        <h1>Tabla de titulos</h1>
        <table border="1">
            <tr>
                <td>Titulos</td>
            </tr>
            {
              for $titulo in $titulos
              return
              <tr>
                  <td>{$titulo}</td>
              </tr>
            }
        </table>
    </body>
</html>