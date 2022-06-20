%{--Include Main Layout--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'releaseEnvironment.label', default: 'Create')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-releaseEnvironment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<h2><g:message code="default.create.label" args="[entityName]" /></h2>

<div id="create-releaseEnvironment" class="card" role="main">
<div class="card-body">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form controller="releaseEnvironment" action="saveData" >
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <g:link controller="releaseEnvironment" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
        </fieldset>
    </g:form>
</div>
</div>
</body>
</html>

