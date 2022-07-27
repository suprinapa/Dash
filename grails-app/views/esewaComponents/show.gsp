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
</head>

<div class="nav pb-2" role="navigation">
    <g:set var="entityName" value="${message(code: 'esewaComponents.label', default: 'Esewa Components')}"/>
    <g:link controller="esewaComponents" action="create" class="btn btn-success"><g:message code="default.create.label"
                                                                                         args="[entityName]"/></g:link>
</div>
<br>

<div class="card">

    <div class="card-header">
        <h4 style=font-family:aria-atomic,ui-serif><g:message code="default.show.label"
                                                              args="[entityName]"/></h4>
    </div>

    <div class="card-body">
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
    </div>
</div>
<br>
<g:form url="[resource: esewaComponents, action: 'delete']" method="DELETE">
    <fieldset class="buttons">
        <g:link class="btn btn-secondary" action="edit" resource="${esewaComponents}"><g:message
                code="default.button.edit.label" default="Edit"/></g:link>
%{--        <g:actionSubmit class="btn btn-danger deleteConfirm" action="delete"
                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>--}%
        <g:link controller="esewaComponents" action="index" class="btn btn-success"><g:message
                code="back"/></g:link>
    </fieldset>
</g:form>
</html>
