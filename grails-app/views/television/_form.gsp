<%@ page import="webshoptrain.Television" %>



<div class="fieldcontain ${hasErrors(bean: televisionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="television.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="200" required="" value="${televisionInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: televisionInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="television.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" maxlength="200" required="" value="${televisionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: televisionInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="television.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="price" maxlength="12" required="" value="${televisionInstance?.price}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: televisionInstance, field: 'manufacture', 'error')} required">
	<label for="manufacture">
		<g:message code="television.manufacture.label" default="Manufacture" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacture" maxlength="200" required="" value="${televisionInstance?.manufacture}"/>

</div>

