<%@ page import="webshoptrain.AccountBank" %>



<div class="fieldcontain ${hasErrors(bean: accountBankInstance, field: 'bankName', 'error')} required">
	<label for="bankName">
		<g:message code="accountBank.bankName.label" default="Bank Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bankName" maxlength="200" required="" value="${accountBankInstance?.bankName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountBankInstance, field: 'numberAccount', 'error')} required">
	<label for="numberAccount">
		<g:message code="accountBank.numberAccount.label" default="Number Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numberAccount" maxlength="200" required="" value="${accountBankInstance?.numberAccount}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountBankInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="accountBank.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${webshoptrain.Customer.list()}" optionKey="id" required="" value="${accountBankInstance?.customer?.id}" class="many-to-one"/>

</div>

