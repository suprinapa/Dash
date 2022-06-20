<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 5/12/2022
  Time: 1:19 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'esewaComponents.label', default: 'Esewa Components')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-esewaComponents" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                      default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <g:link controller="esewaComponents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>
<div id="show-esewaComponents" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <ol class="property-list esewaComponents">

        <g:if test="${esewaComponents?.componentName}">
            <li class="list-group-item">
                <span id="componentName-label" class="badge"><g:message code="esewaComponents.componentName.label"
                                                                        default="Component Name"/></span>

                <span class="property-value" aria-labelledby="componentName-label"><g:fieldValue
                        bean="${esewaComponents}" field="componentName"/></span>

            </li>
        </g:if>
    </ol>
    <g:form url="[resource: esewaComponents, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-secondary" action="edit" resource="${esewaComponents}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class=" delete-confirmation btn btn-danger" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>
            <g:link controller="esewaComponents" action="index" class="btn btn-success"><g:message code="Back"/></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
