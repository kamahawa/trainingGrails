<%@ page import="webshoptrain.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="customer.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="200" required="" value="${customerInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="customer.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="200" required="" value="${customerInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="customer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="200" required="" value="${customerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'accountBank', 'error')} required">
	<label for="accountBank">
		<g:message code="customer.accountBank.label" default="Account Bank" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="accountBank" name="accountBank.id" from="${webshoptrain.AccountBank.list()}" optionKey="id" required="" value="${customerInstance?.accountBank?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'birthday', 'error')} required">
	<label for="birthday">
		<g:message code="customer.birthday.label" default="Birthday" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthday" precision="day"  value="${customerInstance?.birthday}"  />

</div>

