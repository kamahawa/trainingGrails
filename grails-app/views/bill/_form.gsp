<%@ page import="webshoptrain.Bill" %>



<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="bill.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" value="${billInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'billTelevision', 'error')} ">
	<label for="billTelevision">
		<g:message code="bill.billTelevision.label" default="Bill Television" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'customer', 'error')} required">
	<label for="customer">
		<g:message code="bill.customer.label" default="Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="customer" name="customer.id" from="${webshoptrain.Customer.list()}" optionKey="id" required="" value="${billInstance?.customer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'customerBill', 'error')} ">
	<label for="customerBill">
		<g:message code="bill.customerBill.label" default="Customer Bill" />
		
	</label>
	<g:select name="customerBill" from="${webshoptrain.Customer.list()}" multiple="multiple" optionKey="id" size="5" value="${billInstance?.customerBill*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'television', 'error')} required">
	<label for="television">
		<g:message code="bill.television.label" default="Television" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="television" name="television.id" from="${webshoptrain.Television.list()}" optionKey="id" required="" value="${billInstance?.television?.id}" class="many-to-one"/>

</div>

