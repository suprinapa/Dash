<%@ page import="dash.EsewaComponents" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'esewa.Components', default: 'List-Of')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <g:link controller="esewaComponents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>

<div id="list-esewaComponents" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>


    <div id="gridList">
        <g:render template="grid"/>
    </div>
</div>
</body>
</html>
