<%@page import = "java.sql.Connerctor"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int   codigo;
            String  nome;
            String marca;
            double preco;
            
            codigo = Integer.parseInt(request.getParameter("codigo"));
            nome   = request.getParameter ("name");
            marca  = request.getParameter("marca");
            preco  = Double.parseDouble(request.getParameter("preco"));
            
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            
String url = "jdbc:myql://localhost:3307/bancojsp";
            String user = "root";
            String password = "";
            conecta = DriverManager.getConnection(url,user,password);
            
            
            
            
            
            
        %>
    </body>
</html>
