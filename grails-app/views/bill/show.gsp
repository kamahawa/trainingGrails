
<%@ page import="webshoptrain.Bill" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bill.label', default: 'Bill')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bill" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bill">
			
				<g:if test="${billInstance?.number}">
				<li class="fieldcontain">
					<span id="number-label" class="property-label"><g:message code="bill.number.label" default="Number" /></span>
					
						<span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${billInstance}" field="number"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.billTelevision}">
				<li class="fieldcontain">
					<span id="billTelevision-label" class="property-label"><g:message code="bill.billTelevision.label" default="Bill Television" /></span>
					
						<g:each in="${billInstance.billTelevision}" var="b">
						<span class="property-value" aria-labelledby="billTelevision-label"><g:link controller="television" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.customer}">
				<li class="fieldcontain">
					<span id="customer-label" class="property-label"><g:message code="bill.customer.label" default="Customer" /></span>
					
						<span class="property-value" aria-labelledby="customer-label"><g:link controller="customer" action="show" id="${billInstance?.customer?.id}">${billInstance?.customer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.customerBill}">
				<li class="fieldcontain">
					<span id="customerBill-label" class="property-label"><g:message code="bill.customerBill.label" default="Customer Bill" /></span>
					
						<g:each in="${billInstance.customerBill}" var="c">
						<span class="property-value" aria-labelledby="customerBill-label"><g:link controller="customer" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.television}">
				<li class="fieldcontain">
					<span id="television-label" class="property-label"><g:message code="bill.television.label" default="Television" /></span>
					
						<span class="property-value" aria-labelledby="television-label"><g:link controller="television" action="show" id="${billInstance?.television?.id}">${billInstance?.television?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:billInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${billInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
