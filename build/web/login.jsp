<%-- 
    Document   : login
    Created on : 30/07/2018, 08:36:18
    Author     : gabic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eventos IFPR</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="  crossorigin="anonymous"></script>

        <%
            String e = request.getParameter("e");
            String mensagem = "";
            if (e != null) {
                mensagem = e;
            }
        %>

    </head>
    <body>
        <header>
            <jsp:include page="cabecalho.jsp" flush="true" />
        </header>

        <main>

            <p><%=mensagem%></p>

            <div class="row">
                <form action="scripts/login.jsp" method="POST" class="col s12">
                    <div class="row">
                        <br>
                        <div class="input-field col s12">
                            <i class="material-icons prefix">person</i>
                            <input id="usuario" name="usuario" type="text" class="validate">
                            <label for="usuario">Usuario</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">https</i>
                            <input id="senha" name="senha" type="password" class="validate">
                            <label for="senha">Senha</label>
                        </div>
                    </div>




                    <div class="row">
                        <div class="input-field col s12">
                            <button type="submit" class="waves-effect waves-light btn"><i class="material-icons right">send</i>Entrar</button>
                        </div>
                    </div>

                </form>
            </div>
        </main>

        <footer>
            <jsp:include page="rodape.jsp" flush="true" />
        </footer>                
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>        
    </body>
</html>