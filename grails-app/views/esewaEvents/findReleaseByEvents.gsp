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
    <g:set var="entityName" value="${message(code: 'esewa.Events', default: 'Events')}"/>
    <g:link controller="esewaEvents" action="create" id ="${params.id}" class="btn btn-success"><g:message code="default.add.label"
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
            <table class="table table-bordered">
                <thead>
                <tr>
                <th scope="col">Event Name</th>
                <th scope="col">Approved By</th>
                <th scope="col">Approved Date</th>
                </tr>
                </thead>

               <tbody>
                <tr>
               <td <g:each in = "${esewaEvents.esewaEvents}" class ="list-group">
                    <p>${it.eventName}</p></g:each>

               <td <g:each in = "${esewaEvents}" class ="list-group">
                    <p>${it.approvedBy}</p></g:each>

                <td <g:each in = "${esewaEvents}" class ="list-group">
                    <p>${it.approvedDate}</p></g:each>
                </tr>
                </tbody>
            </table>


          %{-- <g:if test="${esewaEvents?.eventName}">
                <li class="list-group-item">
                    <span id="componentName-label" class="badge"><g:message code="esewaEvents.eventName.label"
                                                                            default="Event Name"/></span>

                    <span class="property-value" aria-labelledby="componentName-label"><g:fieldValue
                            bean="${esewaEvents}" field="eventName"/></span>
                </li>
            </g:if>--}%
<br>
%{--<g:form url="[resource: esewaEvents, action: 'delete']" method="DELETE">
    <fieldset class="buttons">
        <g:link class="btn btn-secondary" action="edit" resource="${esewaEvents}"><g:message
                code="default.button.edit.label" default="Edit"/></g:link>
        --}%%{--        <g:actionSubmit class="btn btn-danger deleteConfirm" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>--}%%{--
        <g:link controller="esewaEvents" action="index" class="btn btn-success"><g:message
                code="back"/></g:link>
    </fieldset>
</g:form>--}%
</html>
