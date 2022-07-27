<%@ page import="dash.ReleaseNotes" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'releaseNotes.label', default: 'Release Notes')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <g:link controller="releaseNotes" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
    <div class="card-header">
        <h4><g:message code="default.list.label" args="[entityName]"/></h4>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
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
