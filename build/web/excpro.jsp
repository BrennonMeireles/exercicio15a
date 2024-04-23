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
            //recebe o código digitado no formulario
            int cod;
            cod = Integer.parseInt(request.getParameter("codigo"));
            //Conecta ao Banco de dados bancojsp

            try {
                //Fazendo a conexão com o banco de dados
                Connection conecao;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");

                String url = "jdbc:mysql://localhost:3307/bancojsdp";
                String user = "root";
                String password = "";

                conecao = DriverManager.getConnection(url, user, password);

                //exclui o produto do codigo informado no form.
                String sql = ("DELETE FROM produto WHERE codigo=?");
                st = conecao.prepareStatement(sql);
                st.setInt(1, cod);
                int resultado = st.executeUpdate(); //executa o DELETE

                //Verificar se o produto foi ou não excluido
                if (resultado == 0) {
                    out.print("Este produto não esta cadastrado");
                } else {
                    out.print("O produto de código = " + cod + " foi excluido com sucesso");
                }
            } catch (Exception x) {
                String mensagemErro = x.getMessage();
                out.print("Entre em contato com o suporte e informe o erro: " + mensagemErro);
            }

        %>
    </body>
</html>