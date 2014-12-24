<%--
  Created by IntelliJ IDEA.
  User: fois03
  Date: 2014/12/23
  Time: 11:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="layout_main"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
    <div class="row">
        <div class="col-sm-8">
            <div class="the-box">
                <g:form class="form-horizontal" controller="electronic" action="update"
                      data-bv-message="Du lieu khong hop ly. Vui long kiem tra lai."
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                    <g:hiddenField name="id" value="${result.id}" />
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Name</label>
                        <div class="col-lg-5">
                            <g:textField name="name" value="${result.name}" data-bv-notempty-message="The last name is required and cannot be empty"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Description</label>
                        <div class="col-lg-5">
                            <g:textField name="description" value="${result.description}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Price</label>
                        <div class="col-lg-5">
                            <g:textField name="price" value="${result.price}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Manufacture</label>
                        <div class="col-lg-5">
                            <g:textField name="manufacture" value="${result.manufacture}"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <g:actionSubmit name="Update" action="update" class="btn btn-primary" value="${message(code:'default.button.update.label')}"/>
                            <input type="button" value="${message(code: 'default.button.cancel.label')}" class="btn btn-primary"
                                   onclick="window.history.back()"/>
                        </div>
                    </div>
                </g:form>
            </div><!-- /.the-box -->
        </div><!-- /.col-sm-8 -->

    </div><!-- /.row -->

</body>
</html>