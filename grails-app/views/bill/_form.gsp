<%@ page import="webshoptrain.Bill" %>



<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'idCustomer', 'error')} required">
	<label for="idCustomer">
		<g:message code="bill.idCustomer.label" default="Id Customer" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idCustomer" type="number" value="${billInstance.idCustomer}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'idProduct', 'error')} required">
	<label for="idProduct">
		<g:message code="bill.idProduct.label" default="Id Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idProduct" type="number" value="${billInstance.idProduct}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="bill.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="number" type="number" value="${billInstance.number}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: billInstance, field: 'television', 'error')} required">
	<label for="television">
		<g:message code="bill.television.label" default="Television" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="television" name="television.id" from="${webshoptrain.Television.list()}" optionKey="id" required="" value="${billInstance?.television?.id}" class="many-to-one"/>

</div>

