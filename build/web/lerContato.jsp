<%-- 
    Document   : lerContato
    Created on : 03/03/2020, 09:32:50
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ler Contato</title>
    </head>
    <body>

        <h1>Ler Contato</h1>
        <form action="FrontController?action=LerContato" method="post">
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
