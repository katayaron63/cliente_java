<%-- 
    Document   : index
    Created on : 15/08/2023, 06:09:03 PM
    Author     : katay
--%>


<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>clientes</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>

        <div class="container">

            <h1 class="display-5">Bienvenido cliente!</h1>
            <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDO</th>
                        <th scope="col">CORREO</th>
                        <th scope="col">TELEFONO</th>
                    </tr>
                </thead>
                <tbody>
                    <%            
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_cliente?zeroDateTimeBehavior=CONVERT_TO_NULL");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM tbl_cliente");
                            System.out.println("ID Cliente: " + rs.getInt("id_cliente"));
                            System.out.println("nombre_cliente " + rs.getString ("nombre_cliente:"));
                            System.out.println("apellido_cliente" + rs.getString ("apellido_cliente"));
                            System.out.println("correo_cliente" + rs.getString ("correo_cliente"));
                            System.out.println("telefono_cliente " + rs.getInt("telefono_cliente"));
                                
                        } catch (Exception ex) {
                            System.out.println("Errpr: " + ex);
                            out.print("Error: " + ex);
                        }
                    
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
