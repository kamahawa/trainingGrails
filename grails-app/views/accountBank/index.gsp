
<%@ page import="webshoptrain.AccountBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accountBank.label', default: 'AccountBank')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-accountBank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-accountBank" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bankName" title="${message(code: 'accountBank.bankName.label', default: 'Bank Name')}" />
					
						<g:sortableColumn property="numberAccount" title="${message(code: 'accountBank.numberAccount.label', default: 'Number Account')}" />
					
						<th><g:message code="accountBank.customer.label" default="Customer" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountBankInstanceList}" status="i" var="accountBankInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountBankInstance.id}">${fieldValue(bean: accountBankInstance, field: "bankName")}</g:link></td>
					
						<td>${fieldValue(bean: accountBankInstance, field: "numberAccount")}</td>
					
						<td>${fieldValue(bean: accountBankInstance, field: "customer")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountBankInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
