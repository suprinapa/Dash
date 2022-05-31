<%@ page import="org.springframework.validation.FieldError" %>
<!DOCTYPE html>
<html>
<head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'esewaEvents.label', default: 'Esewa Events')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-esewaEvents" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${esweaEvents}">
        <ul class="errors" role="alert">
            <g:eachError bean="${esweaEvents}" var="error">
                <li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource:esweaEvents, action:'saveData']" >
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>

</body>
</html>
