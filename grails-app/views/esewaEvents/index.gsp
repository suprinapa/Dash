<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 4/27/2022
  Time: 12:06 PM
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'esewaEvents.label', default: 'Esewa Events')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
%{--    <div class="btn-group">
        <g:form controller="esewaEvents" action="index">
            <div class="input-group" id="search-area">
                <g:select name="colName" class="form-control" from="[eventsName: 'events Name']"
                          value="${params?.colName}" optionKey="key" optionValue="value"/>
                <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Search</button>
                </span>
            </div>
        </g:form>
    </div>--}%
    <div id="list-esewaEvents" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
%{--        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>--}%
        <table>
            <thead>
            <tr>
                <th><g:message code="esewaEvents.esewaRelease.label" default="Esewa Release" /></th>

                <g:sortableColumn property="eventName" title="${message(code: 'esewaEvents.eventName.label', default: 'Event Name')}" />

            </tr>
            </thead>
            <tbody>
            <g:each in="${esewaEventsList}" status="i" var="esewaEvents">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:link action="show" id="${esewaEvents.id}">${fieldValue(bean: esewaEvents, field: "esewaReleaseEvents")}</g:link></td>

                    <td>${fieldValue(bean: esewaEvents, field: "eventName")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="pagination">
            <g:paginate total="${esewaEvents ?: 0}" />
        </div>
    </div>
</body>
</html>