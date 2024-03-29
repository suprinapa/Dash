<%@ page import="dash.EsewaComponents" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'esewa.Events', default: 'Events')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <g:link controller="esewaEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
    <div class="card-header">
        <h4><g:message code="default.list.label" args="[entityName]"/></h4>
        <g:if test="${flash.message}">
            <div class="message" role="status"><g:message code="default.add.label" args="[entityName]"/></div>
        </g:if>
    </div>
    <div class="card-body">
        <div id="gridList">
            <g:render template="grid"/>
        </div>
    </div>
</div>
</body>
</html>
