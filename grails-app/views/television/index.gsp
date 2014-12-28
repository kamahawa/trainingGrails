
<%@ page import="webshoptrain.Television" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="layout_main">
		<g:set var="entityName" value="${message(code: 'television.label', default: 'Television')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-television" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-television" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'television.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'television.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'television.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="manufacture" title="${message(code: 'television.manufacture.label', default: 'Manufacture')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${televisionInstanceList}" status="i" var="televisionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${televisionInstance.id}">${fieldValue(bean: televisionInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: televisionInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: televisionInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: televisionInstance, field: "manufacture")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${televisionInstanceCount ?: 0}" />
			</div>
		</div>
    
    <div>
        <g:formRemote name="mobileForm" update="updateHere" url="[controller: 'television',action:'ajaxAllShowMobile']"
                      on404="alert('not found!')" onSuccess="" before="confirm('Are you want to load?')">
            <g:textField name="idMobileText" id="idMobileText"/>
            <g:actionSubmit name="submit" action="ajaxAllShowMobile" class="btn btn-primary" value="${message(code:'default.button.update.label')}"/>
        </g:formRemote>
    </div>
    <div id="updateHere"></div>

    <div>
        <g:remoteLink name="mobileShow" update="updateRemote" action="ajaxAllShowMobile" controller="television" id="mobileShowId">
            Update remote link
        </g:remoteLink>
    </div>
    <div id="updateRemote"></div>
	</body>
</html>
