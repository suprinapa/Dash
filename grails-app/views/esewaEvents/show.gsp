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
    <g:set var="entityName" value="${message(code: 'esewaEvents.label', default: 'Esewa Events')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-esewaEvents" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                      default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <g:link controller="esewaEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>
<div id="show-esewaEvents" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <ol class="property-list esewaEvents">

        <g:if test="${esewaEvents?.eventName}">
            <li class="list-group-item">
                <span id="eventName-label" class="badge"><g:message code="esewaEvents.eventName.label"
                                                                        default="Event Name"/></span>

                <span class="property-value" aria-labelledby="eventName-label"><g:fieldValue
                        bean="${esewaEvents}" field="eventName"/></span>

            </li>
        </g:if>
    </ol>
    <g:form url="[resource: esewaEvents, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-secondary" action="edit" resource="${esewaEvents}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class=" delete-confirmation btn btn-danger" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>
            <g:link controller="esewaEvents" action="index" class="btn btn-success"><g:message code="Back"/></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
