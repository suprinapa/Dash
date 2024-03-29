
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
    <g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'Release CheckList')}"/>
    <g:link controller="releaseChecklist" action="create" id="${params.id}" class="btn btn-success"><g:message code="default.add.label"
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
            <g:if test="${releaseChecklist?.releaseCheckListDescription}">
                <li class="list-group-item">
                    <span class="badge"><g:message code="releaseChecklist.description.label"
                                                   default="Description : "/></span>

                    <g:each in = "${releaseChecklist}" class ="list-group">
                        <p>${it.releaseCheckListDescription}</p></g:each>

                </li>
            </g:if>
        </ol>
    </div>
</div>
<br>
%{--<g:form url="[resource: releaseChecklist, action: 'delete']" method="DELETE">--}%
%{--    <fieldset class="buttons">--}%
%{--        <g:link class="btn btn-secondary" action="edit" resource="${releaseChecklist}"><g:message--}%
%{--                code="default.button.edit.label" default="Edit"/></g:link>--}%
%{--        <g:actionSubmit class="btn btn-danger deleteConfirm" action="delete"--}%
%{--                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>--}%
%{--        <g:link controller="releaseChecklist" action="index" class="btn btn-success"><g:message--}%
%{--                code="back"/></g:link>--}%
%{--    </fieldset>--}%
%{--</g:form>--}%
</html>
