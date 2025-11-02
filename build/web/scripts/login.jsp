<%-- 
    Document   : login
    Created on : 30/07/2018, 09:04:03
    Author     : gabic
--%>

<%@page import="br.edu.ifpr.irati.modelo.Usuario"%>
<%@page import="br.edu.ifpr.irati.jsp.controle.LoginControle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String nomeUsuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");

    session = request.getSession();

    if (nomeUsuario != null && senha != null) {
        LoginControle loginControle = new LoginControle();
        try {
            Usuario usuario = loginControle.login(nomeUsuario, senha);
            session.setAttribute("usuario", usuario);
            response.sendRedirect("../index.jsp");
        } catch (Exception e) {
            //alterar o valor na variável sessão
            session.setAttribute("usuario", null);
            //redirecionar o usuário 
            response.sendRedirect("../login.jsp?e=" + e.getMessage());
        }
    }else{
        session.setAttribute("usuario", null);
        response.sendRedirect("../login.jsp?e=Acesso");
    }

%>

