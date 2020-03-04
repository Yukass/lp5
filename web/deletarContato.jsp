<%-- 
    Document   : deletarContato
    Created on : 03/03/2020, 09:33:04
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Contato</title>
    </head>
    <body>

        <h1>Deletar Contato</h1>
        <form action="FrontController?action=ApagarContato" method="post">
            Entre com seu email
            <input type="text" name="textEmail"/><br/>
            <input type="submit"/>
        </form>
        <%--
        This example uses JSTL, uncomment the taglib directive above.
        To test, display the page like this: index.jsp?sayHello=true&name=Murphy
        --%>
        <%--
        <c:if test="${param.sayHello}">
            <!-- Let's welcome the user ${param.name} -->
            Hello ${param.name}!
        </c:if>
        --%>

    </body>
</html>
