<%--
  Created by IntelliJ IDEA.
  User: angle_000
  Date: 12/18/2014
  Time: 8:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <g:render template="/shared/css" />
    <g:layoutHead/>
</head>

<body>
    <g:render template="/shared/panel" />

    <g:render template="/shared/topNav" />

    <g:render template="/shared/sidebarLeft" />

    <g:render template="/shared/sidebarRightHeading" />

    <g:render template="/shared/sidebarRight" />

    <div id="content">
        <g:render template="/shared/breadcrumbs"/>
        <g:layoutBody/>
    </div>

    <g:render template="/shared/js" />
</body>
</html>