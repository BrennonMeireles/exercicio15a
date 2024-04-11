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
            
            
            
        %>
    </body>
</html>
