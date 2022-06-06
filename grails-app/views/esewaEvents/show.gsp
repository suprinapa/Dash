<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 5/12/2022
  Time: 1:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'esewaEvents.label', default: 'Esewa Events')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
<body>
<a href="#show-esewaEvents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-esewaEvents" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <ol class="property-list esewaEvents">

%{--        <g:if test="${esewaEvents?.esewaReleaseEvents}">
            <li class="fieldcontain">
                <span id="esewaRelease-label" class="property-label"><g:message code="esewaEvents.esewaReleaseEvents.label" default="Esewa Release Events" /></span>

                <span class="property-value" aria-labelledby="esewaRelease-label"><g:link controller="esewaReleaseEvents" action="show" id="${esewaEvents?.esewaReleaseEvents?.id}">${esewaEvents?.esewaReleaseEvents?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>--}%

        <g:if test="${esewaEvents?.eventName}">
            <li class="fieldcontain">
                <span id="eventName-label" class="property-label"><g:message code="esewaEvents.eventName.label" default="Event Name" /></span>

                <span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${esewaEvents}" field="eventName"/></span>

            </li>
        </g:if>
    </ol>
    <g:form url="[resource:esewaEvents, action:'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${esewaEvents}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>