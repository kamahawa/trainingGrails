
<%@ page import="webshoptrain.MobilePhone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="layout_main">
		<g:set var="entityName" value="${message(code: 'mobilePhone.label', default: 'MobilePhone')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mobilePhone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mobilePhone" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'mobilePhone.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'mobilePhone.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'mobilePhone.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="manufacture" title="${message(code: 'mobilePhone.manufacture.label', default: 'Manufacture')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mobilePhoneInstanceList}" status="i" var="mobilePhoneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mobilePhoneInstance.id}">${fieldValue(bean: mobilePhoneInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: mobilePhoneInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: mobilePhoneInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: mobilePhoneInstance, field: "manufacture")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mobilePhoneInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
