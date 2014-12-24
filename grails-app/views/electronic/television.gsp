<%--
  Created by IntelliJ IDEA.
  User: fois03
  Date: 2014/12/23
  Time: 09:02
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
        <td></td>
        <td></td>
    </tr>
    <g:each in="${tvList}">
        <tr>
            <td>${it.name}</td>
            <td>${it.description}</td>
            <td>${it.price}</td>
            <td>${it.manufacture}</td>
            <td>
                <g:link action="edit" id="${it.id}" title="${message(code: 'default.button.edit.label')}" class="btnEdit">
                    ${message(code: 'default.button.edit.label')}
                </g:link>
            </td>
            <td>
                <g:link action="delete" id="${it.id}" title="${message(code: 'default.button.delete.label')}" class="btnDelete">
                    ${message(code: 'default.button.delete.label')}
                </g:link>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>