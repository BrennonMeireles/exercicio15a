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
            
//          insere os dados na tabela produto
//          do o banco de dados aberto

            String sql = ("INSERT INTO produto VALUES ? ? ? ?");
            st = conecta.prepareStatement(sql);
            st.setInt   (1, codigo); // indica que sera inserido no primeiro campo
            st.setString(2, nome);
            st.setString(3, marca);
            st.setDouble(4, preco);
            
            st.executeUpdate(); // executa o comando INSERT
            out.println("<p><strong>Produto cadastrado com sucesso...</strong></p>");
            
        %>
    </body>
</html>
