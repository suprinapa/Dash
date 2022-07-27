<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 4/27/2022
  Time: 12:06 PM
--%>
<%@ page import="dash.EsewaComponents" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'release.Environment', default: 'Environment')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
    <g:link controller="releaseEnvironment" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
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



%{--
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'release.Environment', default: 'List-Of')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="nav" role="navigation">
    <g:link controller="releaseEnvironment" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>
<div class="card">
<div class="card-header">
    <div id="list-releaseEnvirmonment" role="main">
        <h2><g:message code="default.list.label" args="[entityName]" /></h2>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    </div>
</div>
<div class="card-body">
    <div id="gridList">
        <g:render template="grid"/>
    </div>
</div>
</div>
</body>
</html>--}%
