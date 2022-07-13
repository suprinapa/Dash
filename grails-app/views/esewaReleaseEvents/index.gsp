<%@ page import="dash.EsewaReleaseEvents" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'Esewa Release Events')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <g:link controller="esewaReleaseEvents" action="create" class="btn btn-success"><g:message
            code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
    <div class="card-header">
        <h4 style=font-family:aria-atomic,ui-serif><g:message code="default.list.label" args="[entityName]"/></h4>
    </div>

    <div class="card-body">

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div id="gridList">
            <g:render template="grid"/>
        </div>
    </div>
</div>
</body>
</html>
