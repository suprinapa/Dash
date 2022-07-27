<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="card">
    <div class="card-header">
        <h4 style=font-family:aria-atomic,ui-serif><g:message code="default.create.label" args="['Events']"/></h4>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
    </div>

    <div class="card-body">

        <g:form controller="esewaEvents" action="saveData">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-success"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                <g:link controller="esewaEvents" action="index" class="btn btn-secondary"><g:message
                        code="cancel"/></g:link>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>


%{--
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

    <g:link controller="esewaEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>

</div>
<div id="create-esewaEvents" class="content scaffold-create" role="main">
    <div class="card-body">
    <h2><g:message code="default.create.label" args="[entityName]" /></h2>
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
            <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <g:link controller="esewaEvents" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
        </fieldset>
    </g:form>
</div>

</div>
</body>
</html>
--}%
