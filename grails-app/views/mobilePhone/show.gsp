
<%@ page import="webshoptrain.MobilePhone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="layout_main">
		<g:set var="entityName" value="${message(code: 'mobilePhone.label', default: 'MobilePhone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mobilePhone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mobilePhone" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mobilePhone">
			
				<g:if test="${mobilePhoneInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="mobilePhone.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${mobilePhoneInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobilePhoneInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="mobilePhone.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${mobilePhoneInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobilePhoneInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="mobilePhone.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${mobilePhoneInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobilePhoneInstance?.manufacture}">
				<li class="fieldcontain">
					<span id="manufacture-label" class="property-label"><g:message code="mobilePhone.manufacture.label" default="Manufacture" /></span>
					
						<span class="property-value" aria-labelledby="manufacture-label"><g:fieldValue bean="${mobilePhoneInstance}" field="manufacture"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mobilePhoneInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mobilePhoneInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
