
<%@ page import="webshoptrain.Bill" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bill.label', default: 'Bill')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bill" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idCustomer" title="${message(code: 'bill.idCustomer.label', default: 'Id Customer')}" />
					
						<g:sortableColumn property="idProduct" title="${message(code: 'bill.idProduct.label', default: 'Id Product')}" />
					
						<g:sortableColumn property="number" title="${message(code: 'bill.number.label', default: 'Number')}" />
					
						<th><g:message code="bill.television.label" default="Television" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${billInstanceList}" status="i" var="billInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${billInstance.id}">${fieldValue(bean: billInstance, field: "idCustomer")}</g:link></td>
					
						<td>${fieldValue(bean: billInstance, field: "idProduct")}</td>
					
						<td>${fieldValue(bean: billInstance, field: "number")}</td>
					
						<td>${fieldValue(bean: billInstance, field: "television")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${billInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
