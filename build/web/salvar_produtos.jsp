<!--Fazendo a importação das bibliotecas para fazer a conexão com o banco de dados-->
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            int codigo;
            String nome;
            String marca;
            double preco;
            
            codigo = Integer.parseInt(request.getParameter("codigo"));
            nome = request.getParameter("nome");
            marca = request.getParameter("marca");
            preco = Double.parseDouble(request.getParameter("preco"));
            
            //Fazendo a conexão com o banco de dados
            
            try{
                Connection conecta; //é para gerenciar a conexão com o banco de dados 
                PreparedStatement st; //  é para executar consultas SQL parametrizadas de forma segura e eficiente. 
                Class.forName("com.mysql.cj.jdbc.Driver"); //importando o driver de conexão na aplicação

                String url="jdbc:mysql://localhost:3307/bancojsdp";
                String user = "root";
                String password = "";
                conecta = DriverManager.getConnection(url, user, password);

                //Insere os dados na tabela produto do banco de dados aberto

                String sql = ("INSERT INTO produto VALUES (?, ?, ?, ?)");
                st = conecta.prepareStatement(sql);
                st.setInt(1, codigo);  //indica que será inserido no primeiro campo da tabela
                st.setString(2, nome);
                st.setString(3, marca);
                st.setDouble(4, preco);
                st.executeUpdate(); //executa o comando INSERT
                out.print("<p><strong>Produto cadastro com sucesso...</Strong></p>");  
            
            }catch (Exception x) {
                String erro = x.getMessage();
                if (erro.contains("Duplicate entry")) {
                    out.print("<p style='color: blue;font-size:25px'> Este produto já está cadastrado!</p>");
                } else {
                    out.print("<p style='color: red; font-size:25px'> Mensagem de erro: " + erro + "</p>");
                }
            }
            
        %>
    </body>
</html>
