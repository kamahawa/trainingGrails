<%--
  Created by IntelliJ IDEA.
  User: fois03
  Date: 2014/12/23
  Time: 15:18
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="layout_main"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-sm-8">
        <div class="the-box">
            <g:form class="form-horizontal" controller="electronic">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Name</label>
                    <div class="col-lg-5">
                        <label class="">${result.name}</label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Description</label>
                    <div class="col-lg-5">
                        <label class="">${result.description}</label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Price</label>
                    <div class="col-lg-5">
                        <label class="">${result.price}</label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Manufacture</label>
                    <div class="col-lg-5">
                        <label class="">${result.manufacture}</label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <g:actionSubmit value="${message(code: 'default.button.back.label')}" action="television" />
                        %{--<input type="button" value="${message(code: 'default.button.cancel.label')}" class="btn btn-primary"--}%
                               %{--onclick="window.history.back()"/>--}%
                    </div>
                </div>
            </g:form>
        </div><!-- /.the-box -->
    </div><!-- /.col-sm-8 -->

</div><!-- /.row -->
</body>
</html>