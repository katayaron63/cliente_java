<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Clientes</title>
</head>
<body>
     <h1>Bienvenido Clientes</h1>
         <form name="form" action="ClienteServlet" method="POST">
          <table border="1">
            <tr>
                <td>
                    Nombre:
                </td>
               
                <td>
                      <input type="text" name="nombre" id="nombre" required>
                </td>
            </tr>
             <tr>
                <td>
                    Apellido:
                </td>
               
                <td>
                      <input type="text" name="apellido" id="apellido" required>
                </td>
            </tr>
                <tr>
                <td>
                    Correo:
                </td>
               
                <td>
                      <input type="email" name="correo" id="correo" required>
                </td>
            </tr>
                <tr>
                <td>
                    Teléfono:
                </td>
               
                <td>
                   <input type="num" name="telefono" id="telefono" required>
        
                </td>
            </tr>
        </table>  
        <input type="submit" value="Guardar">
    </form>
</body>
</html>