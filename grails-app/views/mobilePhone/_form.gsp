<%@ page import="webshoptrain.MobilePhone" %>



<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="mobilePhone.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="200" required="" value="${mobilePhoneInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="mobilePhone.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" maxlength="200" required="" value="${mobilePhoneInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="mobilePhone.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="price" maxlength="12" required="" value="${mobilePhoneInstance?.price}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mobilePhoneInstance, field: 'manufacture', 'error')} required">
	<label for="manufacture">
		<g:message code="mobilePhone.manufacture.label" default="Manufacture" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacture" maxlength="200" required="" value="${mobilePhoneInstance?.manufacture}"/>

</div>

