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

<div>
    <g:set var="entityName" value="${message(code: 'releaseNotes.label', default: 'Release Notes')}"/>
    <g:link controller="releaseNotes" action="create" id="${params.id}" class="btn btn-success"><g:message code="default.add.label"
                                                                                         args="[entityName]"/></g:link>
</div>
<br>
<g:render template="navigation"/>
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

            <g:if test="${releaseNotes?.releaseNotesDescription}">
                <li class="list-group-item">
                    <span id="description-label" class="badge"><g:message code="releaseNotes.description.label"
                                                                          default="Description : "/></span>

                                <span class="property-value" aria-labelledby="esewaEnvironment-label"><g:each in = "${releaseNotes}" class ="list-group">
                        <p>${it.releaseNotesDescription}</p></g:each></span>
                </li>
            </g:if>
        </ol>
    </div>
</div>
<br>
%{--<g:form url="[resource: releaseNotes, action: 'delete']" method="DELETE">
    <fieldset class="buttons">
--}%%{--        <g:link class="btn btn-secondary" action="edit" resource="${releaseNotes}"><g:message--}%%{--
--}%%{--                code="default.button.edit.label" default="Edit"/></g:link>--}%%{--
--}%%{--        <g:actionSubmit class="btn btn-danger deleteConfirm" action="delete"--}%%{--
--}%%{--                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>--}%%{--
        <g:link controller="releaseNotes" action="index" class="btn btn-success"><g:message
                code="back"/></g:link>
    </fieldset>
</g:form>--}%
</html>
