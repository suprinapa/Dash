<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 7/28/2022
  Time: 12:17 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<div>
    <g:set var="entityName" value="${message(code: 'esewaComponents.label', default: 'Esewa Components')}"/>
    <g:link controller="esewaComponents" action="create" id="${params.id as Integer}"  class="btn btn-success"><g:message code="default.add.label"
                                                                                            args="[entityName]"/></g:link>
</div>
<br>
<g:render template="navigation"/>
<br>

<div class="card">

    <div class="card-header">
        <h4><g:message code="default.show.label" args="[flash.args]"/></h4>
    </div>

    <div class="card-body">
        <g:if test="${flash.message}">
            <div class="message" role="status"><g:message code="default.add.label" args="[entityName]"/></div>
        </g:if>

        <ol>

            <g:if test="${esewaComponents?.componentName}">
                <li class="list-group-item">
                    <span id="componentName-label" class="badge"><g:message code="esewaComponents.componentName.label"
                                                                            default="Component Name :"/></span>

                    <g:each in = "${esewaComponents}" class ="list-group">
                        <p>${it.componentName}</p></g:each>

                </li>
            </g:if>
        </ol>
    </div>
</div>
<br>
%{--<g:form url="[resource: esewaComponents, action: 'delete']" method="DELETE">
    <fieldset class="buttons">
--}%%{--        <g:link class="btn btn-secondary" action="edit" resource="${esewaComponents}"><g:message--}%%{--
--}%%{--                code="default.button.edit.label" default="Edit"/></g:link>--}%%{--
        --}%%{--        <g:actionSubmit class="btn btn-danger deleteConfirm" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>--}%%{--
        <g:link controller="esewaComponents" action="index" class="btn btn-success"><g:message
                code="back"/></g:link>
    </fieldset>
</g:form>--}%
</html>