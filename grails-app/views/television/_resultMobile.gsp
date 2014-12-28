<div id="list-mobilePhone" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'mobilePhone.name.label', default: 'Name')}" />

            <g:sortableColumn property="description" title="${message(code: 'mobilePhone.description.label', default: 'Description')}" />

            <g:sortableColumn property="price" title="${message(code: 'mobilePhone.price.label', default: 'Price')}" />

            <g:sortableColumn property="manufacture" title="${message(code: 'mobilePhone.manufacture.label', default: 'Manufacture')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${mobilePhoneList}" status="l" var="mobilePhone">
            <tr class="${(l % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${mobilePhone.id}">${fieldValue(bean: mobilePhone, field: "name")}</g:link></td>

                <td>${fieldValue(bean: mobilePhone, field: "description")}</td>

                <td>${fieldValue(bean: mobilePhone, field: "price")}</td>

                <td>${fieldValue(bean: mobilePhone, field: "manufacture")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${mobilePhoneCount ?: 0}" />
    </div>
</div>