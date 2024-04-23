<!--Fazendo a importação das bibliotecas para fazer a conexão com o banco de dados-->
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de produtos</title>
        <link rel="stylesheet" href="tabela.css"/>
    </head>
    <body>
        <%
            try {
                //Fazendo a conexão com o banco de dados
                Connection conecao;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3307/bancojsp";
                String user = "root";
                String password = "";
                conecao = DriverManager.getConnection(url, user, password);
                //Recuperando os dados da tabela do BD 
                String sql = ("SELECT * FROM produto");
                st = conecao.prepareStatement(sql);
                ResultSet rs = st.executeQuery();
                //ResultSet serve para guardar aquilo que é 
                //Trazido do BDados (só serve para isso)    
        %>
        <table border=1>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Marca</th>
                <th>Preço</th>
            </tr>
            <!--O método next() é usado para mover o cursor do ResultSet para a próxima linha dos resultados, se houver uma.
                        Ele retorna true se houver uma próxima linha e move o cursor para essa linha, e retorna false se não houver mais linhas para percorrer.
            -->
            <%
                while (rs.next()) {
            %>
            <tr>
                <td>
                    <%=rs.getString("codigo")%>
                </td>
                <td>
                    <%=rs.getString("nome")%>
                </td>
                <td>
                    <%=rs.getString("marca")%>
                </td>
                <td>
                    <%=rs.getString("preco")%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            } catch (Exception e) {
                out.print("Mensagem de erro" + e.getMessage());
            }
        %>
    </body>
</html>
<!--Fazendo a importação das bibliotecas pa... por GABRIEL DOS ANJOS ROCHA DE SANTANA
GABRIEL DOS ANJOS ROCHA DE SANTANA
11:16
<!--Fazendo a importação das bibliotecas para fazer a conexão com o banco de dados-->
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de produtos</title>
        <link rel="stylesheet" href="tabela.css"/>
    </head>
    <body>
        <%
            try {
                //Fazendo a conexão com o banco de dados
                Connection conecao;
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3307/bancojsdp";
                String user = "root";
                String password = "";
                conecao = DriverManager.getConnection(url, user, password);
                //Recuperando os dados da tabela do BD 
                String sql = ("SELECT * FROM produto");
                st = conecao.prepareStatement(sql);
                ResultSet rs = st.executeQuery();
                //ResultSet serve para guardar aquilo que é 
                //Trazido do BDados (só serve para isso)    
        %>
        <table border=1>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Marca</th>
                <th>Preço</th>
            </tr>
            <!--O método next() é usado para mover o cursor do ResultSet para a próxima linha dos resultados, se houver uma.
                        Ele retorna true se houver uma próxima linha e move o cursor para essa linha, e retorna false se não houver mais linhas para percorrer.
            -->
            <%
                while (rs.next()) {
            %>
            <tr>
                <td>
                    <%=rs.getString("codigo")%>
                </td>
                <td>
                    <%=rs.getString("nome")%>
                </td>
                <td>
                    <%=rs.getString("marca")%>
                </td>
                <td>
                    <%=rs.getString("preco")%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            } catch (Exception e) {
                out.print("Mensagem de erro" + e.getMessage());
            }
        %>
    </body>
</html>
