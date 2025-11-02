<%-- 
    Document   : cabecalho
    Created on : 08/05/2018, 13:20:35
    Author     : Usuario
--%>

<%@page import="br.edu.ifpr.irati.modelo.Usuario"%>
<%@page import="br.edu.ifpr.irati.modelo.ItemMenu"%>
<%@page import="br.edu.ifpr.irati.jsp.controle.ControlePaginas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav>
    <div class="nav-wrapper">
        <a href="index.jsp" class="brand-logo">Eventos IFPR - 2018</a>
        <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons left">menu</i></a>
        <ul class="right hide-on-med-and-down">
     <%
        session = request.getSession();
        Usuario u = (Usuario) session.getAttribute("usuario");
        boolean logado = false;
        if(u != null){
        logado = true;
    }
    
        ControlePaginas controle = new ControlePaginas();
                for (ItemMenu item : controle.getItens()) {
                    if (!item.isVisivel()) {
                        continue;
                    }
                    
                    if((item.isAberta() && logado == false) || (logado == true && !item.isAberta())) {
            %>
            <li>
                <a href="<%=item.getUrl()%>">
                    <i class="material-icons left">
                        <%=item.getIcone()%>
                    </i>
                    <%=item.getValor()%>
                </a>
            </li>
            <% } 
                }
            %>
        </ul>
    </div>
</nav>

<ul class="sidenav" id="mobile-demo">
    <%
        for (ItemMenu item : controle.getItens()) {
            if (!item.isVisivel()) {
                continue;
            }
             if((item.isAberta() && logado == false)|| (logado == true && !item.isAberta())) {
    %>
    <li>
        <a href="<%=item.getUrl()%>">
            <i class="material-icons">
                <%=item.getIcone()%>
            </i>
            <%=item.getValor()%>
        </a>
    </li>
    <%}
}
    %>
</ul>

<script type="text/javascript">
    /*
     document.addEventListener('DOMContentLoaded', function () {
     var elems = document.querySelectorAll('.sidenav');
     var instances = M.Sidenav.init(elems, options);
     }); */

    // Or with jQuery

    $(document).ready(function () {
        $('.sidenav').sidenav();
    });
</script>
<style>
    nav{
        background:#008f09 !important;
    }
</style>