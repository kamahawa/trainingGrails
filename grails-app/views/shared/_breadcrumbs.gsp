<!-- The breadcrumb bar -->
<div>
    <ul class="breadcrumb">
        <g:if test="${params.controller != null}">
            <li>
                <a href="${g.createLink(controller: params.controller)}">${message(code: params.controller+'.label')}</a>
            </li>
            <g:if test="${params.action != null}">
                <li>
                    <a href="#">${message(code: params.controller+'.'+params.action+'.label')}</a>
                </li>
            </g:if>
        </g:if>
    </ul>
</div>