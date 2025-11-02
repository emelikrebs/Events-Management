<%-- 
    Document   : eventos.jsp
    Created on : 16/09/2018, 14:51:27
    Author     : gabic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eventos IFPR Irati</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="  crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
            <jsp:include page="cabecalho.jsp" flush="true" />
        </header>

        <main>
            <body>
                <form action="login.jsp" method="post" >
                    <div class="row">
                        <div class="col s6 m3">
                            <div class="card">
                                <div class="card-image">
                                    <img src="imagens/concurso-literario.png" height="300" width="100">
                                    <span class="card-title">Concurso literário</span>
                                   <!-- <a class="btn-floating halfway-fab waves-effect waves-light green"><i class="material-icons">add</i></a>-->
                                   <input type="submit" value="add" name="info"  class="btn-floating halfway-fab waves-effect waves-light green" />
                                </div>
                                <div class="card-content">
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </body>
        </main>
        <footer>
            <jsp:include page="rodape.jsp" flush="true" />
        </footer>                
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>

    </body>
</html>
