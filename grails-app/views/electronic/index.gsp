<%--
  Created by IntelliJ IDEA.
  User: fois03
  Date: 2014/12/22
  Time: 09:23
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="layout_main"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
    <table class="content">
        <tr>
            <td>Name</td>
            <td>Description</td>
            <td>Price</td>
            <td>Manufacture</td>
        </tr>
        <g:each in="${eList}">
            <tr>
                <td>${it.name}</td>
                <td>${it.description}</td>
                <td>${it.price}</td>
                <td>${it.manufacture}</td>
            </tr>
        </g:each>
    </table>
</body>
</html>