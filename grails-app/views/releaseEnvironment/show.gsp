<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 6/16/2022
  Time: 2:26 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div> <g:set var="entityName" value="${message(code: 'releaseEnvironment.label', default: 'Environment')}"/>
<g:link controller="releaseEnvironment" action="create" class="btn btn-success"><g:message code="default.create.label"
                                                                                        args="[entityName]"/></g:link>
</div>
<br>

<div class="card">

    <div class="card-header">
        <h4><g:message code="default.show.label" args="[entityName]"/></h4>
    </div>

    <div class="card-body">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <ol>

            <g:if test="${releaseEnvironment?.esewaEnvironment}">
                <li class="list-group-item">
                    <span id="esewaEnvironment-label" class="badge"><g:message code="releaseEnvironment.esewaEnvironment.label"
                                                                               default="Environment"/></span>

                    <span class="property-value" aria-labelledby="esewaEnvironment-label"><g:fieldValue
                            bean="${releaseEnvironment}" field="esewaEnvironment"/></span>

                </li>
            </g:if>
        </ol>
    </div>
</div>
<br>
<g:form url="[resource: releaseEnvironment, action: 'delete']" method="DELETE">
    <fieldset class="buttons">
        <g:link class="btn btn-secondary" action="edit" resource="${releaseEnvironment}"><g:message
                code="default.button.edit.label" default="Edit"/></g:link>
%{--        <g:actionSubmit class="deleteConfirm btn btn-danger" action="delete"--}%
%{--                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>--}%
        <g:link controller="releaseEnvironment" action="index" class="btn btn-success"><g:message code="back"/></g:link>
    </fieldset>
</g:form>
</body>
</html>
